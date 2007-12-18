/*
 * CDDL HEADER START
 *
 * The contents of this file are subject to the terms of the
 * Common Development and Distribution License (the "License").
 * You may not use this file except in compliance with the License.
 *
 * You can obtain a copy of the license at usr/src/OPENSOLARIS.LICENSE
 * or http://www.opensolaris.org/os/licensing.
 * See the License for the specific language governing permissions
 * and limitations under the License.
 *
 * When distributing Covered Code, include this CDDL HEADER in each
 * file and include the License file at usr/src/OPENSOLARIS.LICENSE.
 * If applicable, add the following below this CDDL HEADER, with the
 * fields enclosed by brackets "[]" replaced with your own identifying
 * information: Portions Copyright [yyyy] [name of copyright owner]
 *
 * CDDL HEADER END
 */

/*
 * Copyright 2006 Sun Microsystems, Inc.  All rights reserved.
 * Use is subject to license terms.
 */

#pragma ident	"@(#)tst.sort.d	1.1	06/08/28 SMI"

#pragma D option quiet

tick-1ms
{
	i++;
	@a[i] = sum(100 - (i / 2));
	@b[i] = sum(100 - (i / 4));
	@c[i] = sum(100 - (i / 8));
	@d[i] = sum(100 - (i / 16));
}

tick-1ms
/i == 100/
{
	printa("%10d %@10d %@10d %@10d %@10d\n", @a, @b, @c, @d);
	printa("%10d %@10d %@10d %@10d %@10d\n", @d, @c, @b, @a);
	exit(0);
}
