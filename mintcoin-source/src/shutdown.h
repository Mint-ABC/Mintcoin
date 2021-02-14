// Copyright (c) 2009-2010 Satoshi Nakamoto
// Copyright (c) 2009-2018 The Bitcoin Core developers
// Copyright (c) 2021 The Mintcoin Core developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef MINTCOIN_SHUTDOWN_H
#define MINTCOIN_SHUTDOWN_H

void StartShutdown();
void AbortShutdown();
bool ShutdownRequested();

#endif
