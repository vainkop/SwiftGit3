//
//  push.m
//  SwiftGit2
//
//  Created by Brandon Plank on 12/17/20.
//  Copyright © 2020 GitHub, Inc. All rights reserved.
//

#include "push.h"

bool push_git(git_repository *repository){
	// get the remote and def vars
	git_remote* remote = NULL;
	const git_remote_callbacks *callbacks;
	const git_proxy_options *proxy_opts;
	const git_strarray *headers;
	git_remote_lookup( &remote, repository, "origin" );

	// connect to remote
	git_remote_connect(remote, GIT_DIRECTION_PUSH, callbacks, proxy_opts, headers);

	// add a push refspec
	git_remote_add_push(repository, "origin", "refs/heads/master:refs/heads/master" );

	// configure options
	git_push_options options;
	git_push_init_options(&options, GIT_PUSH_OPTIONS_VERSION);

	// do the push
	git_remote_upload(remote, NULL, &options);

	git_remote_free(remote);
	return true;
}
