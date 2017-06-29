//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------

#include <QDebug>

#include "bufpool.h"

//-----------------------------------------------------------------------------
//-----------------------------------------------------------------------------

//-----------------------------------------------------------------------------
TBufPool::~TBufPool()
{
    for(TBufPoolMap::iterator pool = mBufPool.begin(); pool != mBufPool.end(); ++pool) {
		qDebug() << "[pool deleted] pool id:" << pool.key() << "pool handle:" << pool.value();
        delete pool.value();
    }
	mBufPool.clear();
}

//-----------------------------------------------------------------------------
void TBufPool::bufPoolInfo()
{
	QString infoStr;

	for(TBufPoolMap::iterator pool = mBufPool.begin(); pool != mBufPool.end(); ++pool) {
		infoStr += (" [" + QString::number(pool.key()) +"]:" + QString::number(pool.value()->size()));
	}
	qDebug() << qPrintable(infoStr);
}
