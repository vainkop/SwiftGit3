//
//  push.h
//  SwiftGit2
//
//  Created by Brandon Plank on 12/17/20.
//  Copyright © 2020 GitHub, Inc. All rights reserved.
//

#ifndef push_h
#define push_h

#include <stdio.h>
#import "git2.h"
#include <Foundation/Foundation.h>

bool push_git(git_repository *repository);

#endif /* push_h */
