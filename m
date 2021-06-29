Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A1413B7146
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 29 Jun 2021 13:21:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Date:Message-ID:To:Sender:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/wQDy959qNW8m5eVGsJR+jOm+k394dSOsky33+NH1zs=; b=ElzpWZFsEkLWhBW7EsGnBR20tS
	lePnZC450OuBcIYBe/Ph7RRkfXJJPf9SUo46wMuN4hEzanZdEDTmh8Mt4tMMbeJiweWaOMZUHniDs
	WZN/o7kax/AT0pQ+qWqPyv8BUwd7V0weFGCKz6qzWYBlwWXCiwPvg53PzaqttsGZBuTQ=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lyBn7-0001Ii-Bt; Tue, 29 Jun 2021 11:20:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <sbrabec@suse.com>) id 1lyBn6-0001Ib-Ii
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 29 Jun 2021 11:20:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=T47UkBmyiJ75bHc/w+H9T40K+pkG/yD2zBcidZQVBF4=; b=h/6A6Rh+pvo0EQH9i3HFXKooKQ
 jAgd8ouT2X77/KsaTiNzbgof4PJfXc5cmxb22LeJVpIo/rqB3hccrhI9PxbHQo8lkpzHjNvMTx4Ik
 mzopjiyhneDtJpfD3OJmIGQz0CYwUU2I8qTDqTayaHUp0se2nS3OasVoo7e1ONu7xU7A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=T47UkBmyiJ75bHc/w+H9T40K+pkG/yD2zBcidZQVBF4=; b=O
 zL9+d/w5oNuefJjcPnjZ+DiP2e9T18N7kJ/yIhd++ajQ2HAO9QlbX8tRwCL694/kRvC9LQZb272P2
 0198d5uiLrbIXOYVpFAn7rFVxUdQM8r/TpaAqSD7Nt+iOggtgeHBtrewADl3zYsqbM2pk+BlUILLT
 rgarriiqYxu9EhLo=;
Received: from de-smtp-delivery-102.mimecast.com ([194.104.109.102])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lyBmz-0000WV-KM
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 29 Jun 2021 11:20:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com;
 s=mimecast20200619; t=1624965618;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=T47UkBmyiJ75bHc/w+H9T40K+pkG/yD2zBcidZQVBF4=;
 b=Qat12DBi9i9ZHHyLnXBFjSJ63R+GVSDU5htgJQi6SyhToWHX1t0K2Fhz23b+171a4WpLYd
 83KUlhofWTlv3/Uq/dTr4Zeq3YmBYqNu8YABKJjhPzEBR3yrQRIv6LiN2IyaFLVcCUmiRf
 fqINX3g1/4xZazijmXlfVAs+h3bbCNc=
Received: from EUR05-DB8-obe.outbound.protection.outlook.com
 (mail-db8eur05lp2112.outbound.protection.outlook.com [104.47.17.112])
 (Using TLS) by relay.mimecast.com with ESMTP id
 de-mta-17-u__oLl7MO-6sVsr_49mX-g-1; Tue, 29 Jun 2021 13:04:20 +0200
X-MC-Unique: u__oLl7MO-6sVsr_49mX-g-1
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iTYnBKiaGtplOEkoJO409nm1UpVr++utDROKjWRhCSeQ1Mes4S2dxSSyl+Al2VBGgfVpEKvi1tWpGk6T7LbeVmOhvr5X39C08ED9fr/hYoMERTMV1nG4cfaMQaLNEkLKjPoBaj+TAHqb6mzAJ5bXQIea6C4e432Ajnc5fwsmro3COKm+fk5MT5MRaCky21MNrWq9T6qa9Ogma4W2maffKpirVepEk55Ir7haMQHrdKgSu0KG4kdVqW544XE00bDBL0hlE/K9TXriDdxrYwzEk/pdyNIV55KrG+NtUXIHxtBNQR64KSBwYw6yACP0WqS2y5wagqmrOjL1MKU2idGz/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9hhWvnZAi+N63/5lUKtLfZBfztpSsyX66ewHjZUyYHw=;
 b=CeQY8AHHKEBUZHVcLIguquV7e6j7TipwYbAUXtP09mRkPOQAqdH8AY2wUFg8GT/fGDrNczmYdda/eaYVlyebLZh/ApyJP+K7ZDQ2wkWoUjUf4IowHSvxkvNLQ57rttzJHMgZMrs2WlGI+O4k76illzyj72yGPrs53NYrUkTWc5Bc9Hin6fmlpRu6RRLe3pLa4PBlJtx3j4A5bxT/ss8aE8MHqoyB4sKO9KV3U8lB8v0j5DsTCE9wV03lBD9wpOQmwJ310UupSNVJcSrNGOacaDD2frAmuy0NW+hMqaD6Sfsbrwz8DM5K1qwTsNcxc/2u9apRNe464d7xg2lFHRGCQA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=suse.com; dmarc=pass action=none header.from=suse.com;
 dkim=pass header.d=suse.com; arc=none
Authentication-Results: lists.sourceforge.net; dkim=none (message not signed)
 header.d=none; lists.sourceforge.net;
 dmarc=none action=none header.from=suse.com;
Received: from AM6PR04MB5127.eurprd04.prod.outlook.com (2603:10a6:20b:2::30)
 by AM7PR04MB6934.eurprd04.prod.outlook.com (2603:10a6:20b:10a::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.18; Tue, 29 Jun
 2021 11:04:19 +0000
Received: from AM6PR04MB5127.eurprd04.prod.outlook.com
 ([fe80::3d6b:215a:9ad9:399e]) by AM6PR04MB5127.eurprd04.prod.outlook.com
 ([fe80::3d6b:215a:9ad9:399e%4]) with mapi id 15.20.4264.026; Tue, 29 Jun 2021
 11:04:19 +0000
To: ibm-acpi-devel@lists.sourceforge.net
Message-ID: <6cbd1ea0-a07c-c416-0ea2-d3842a97266c@suse.com>
Date: Tue, 29 Jun 2021 13:04:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
Content-Language: en-US
X-Originating-IP: [2001:1ae9:223:4a00::596]
X-ClientProxiedBy: PR1PR01CA0008.eurprd01.prod.exchangelabs.com
 (2603:10a6:102::21) To AM6PR04MB5127.eurprd04.prod.outlook.com
 (2603:10a6:20b:2::30)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [IPv6:2001:1ae9:223:4a00::596] (2001:1ae9:223:4a00::596) by
 PR1PR01CA0008.eurprd01.prod.exchangelabs.com (2603:10a6:102::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.19 via Frontend
 Transport; Tue, 29 Jun 2021 11:04:18 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 340045b5-7489-4d1a-0d41-08d93aeda46f
X-MS-TrafficTypeDiagnostic: AM7PR04MB6934:
X-Microsoft-Antispam-PRVS: <AM7PR04MB69348053840084061D9B6FF2C3029@AM7PR04MB6934.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:9508;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HU9/lzls9SjVV5+kdl5KfLoRSlLnW0KjYEfHAb6OLd4ohv7aE8p3xcu09JDh4Fp/g0uDs8NU/l3iYM3ZVaotsyhfGssLPmHGYUuh4nVAMbNog1e+pnYMJ2FkHxUX4WjLCv5PNwm/oOWSqS8d7ZFqSu8gicicQrRBhMkV81d+TAvTDJchEtbeCp4BHgc61tpOpJ6QyeJOGkIUajwilS6a5DD5LurXAPQvS2NY9QgPbkTal0q1zAms+Qs4Jt1LgMs3BCwksxmiHHULJAUaqW87sBOxIXNxlfCYgsYzqsrx0W/rB+uSPOqPvDIkafdUn80vtsIB0TDhi6bLQtMHp1NQUeYDPjQJyyczaevPktWgAYV/69NQJyphMl7gN2L1itQ1B9JOB9+dhBKGxBuzSzfw7alpQxXF3q8+8aLXOJZrRihJwjRga4Bk/HFmuPuluZ3XvgiezVv3Od7oiIhXYpkI0MtI2uWAEJKKm2oNiV1edPw+/6XqrGwIQAYs0EI3yqB2MYbXpZglAuCOlHJpOckdHEdomyH65tx2x8zXMSyIXMhdTR9wTXh8ZGvpCIeL7QXIX1ZWXWJf6VIyLyptPEb2BOsRH4PbREXvQuDVCRfMCbtfKhvoM1mU348IXuH/SFEPzjvf9jG/JXMIXVpEMSQ2opcwWUCibAa4sDY6MMFT25Oo/+mkL3vPX7Xar8P5My90S6F//2tuXa7x1vjotL/LgMqm7P27ZhPr7y/Gp4ACcPEGQmQiurZD1fHmOoedCHzk0onlIGRAH/q+bPe9/Sj+8lM09Htva7xDiEo1v/d8u6AGX+Uc8QEzPyRl/coXdui7oZln0MeKAMRUnzR3x/IPUbaWIiRH3LjU15CJNp0I3YEpfnXE1y9AwxXtpFn+rgMx
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB5127.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(136003)(396003)(376002)(346002)(39850400004)(966005)(36756003)(6486002)(478600001)(6916009)(83380400001)(66574015)(8676002)(66476007)(66556008)(316002)(66946007)(31696002)(186003)(16526019)(31686004)(86362001)(6666004)(38100700002)(8936002)(2906002)(2616005)(5660300002)(557034005)(43740500002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hOg6BSUbjHANUg9gV48ig+O94wfgULVb3evKHp3WeBPYlT6ofm3s/q46gV7J?=
 =?us-ascii?Q?DoltwCnfRbPM2KT+3pkp7H+2U/1eAVYproeK7RoyYEQIBPvSqFCIi43QZ16G?=
 =?us-ascii?Q?W7SfhgrLML8KDYXvRu19SNvq5WyW/j6ne86qSI7YrQr9ixYFZZdIZ+7FA76V?=
 =?us-ascii?Q?XXpqUryifjG7Rf4kFnr5hkbJKT9tYCuXnK5dLAbROsipsJfl194q/lTMdrUE?=
 =?us-ascii?Q?6uYKL0MO7uQ1V+eztoQHcLV+u6DfjnFTcKoA+iahlOMI0ky7R7QVo4fUfEz7?=
 =?us-ascii?Q?q/BI8hEpuMbBSX3ub7ECYLLWEy0SRVZSSVDl/erO5qgmqM6xrykh3Hx/b3Kn?=
 =?us-ascii?Q?ZrZJ4E0u6zKLTR6LLVucEVK19CRxLqdIQTjHdWDvZfX+vQ0LVFB/LuaRcR3f?=
 =?us-ascii?Q?i/T/P2LcbjkPHG4bdsyAgVFsUDPZiswHQvyJqPn9qTWVuLzqdnHLOgdLpywm?=
 =?us-ascii?Q?NIclTfVp5XWuNgZvCW9rUxytDWXD25H2yGJ5G5UoSIf9e/NaKRAFV7E83/oK?=
 =?us-ascii?Q?pgNcUs3yGn31Kp8riGmSoYOK6N6Lp5R3lZ5VvvuUkKBAji7HeQsfmdU4Gdv9?=
 =?us-ascii?Q?LHvpBE7OkK3BgQH8e40GSEpQN7yBfprdoGdhvVucmSBlqOHrFvmkB27NoUtj?=
 =?us-ascii?Q?Fhuto/1GR9ydpxvuF2bpXDwCTeMP94AzLbNpAiPKjEwd7LbRJvoZzQcMA6Ew?=
 =?us-ascii?Q?kmsH7UXcEft2LJqRGraMRx0Klw4HKxZ/7PKh0gujP1+vfy5A+SN/xEw1cWWG?=
 =?us-ascii?Q?r+0gv+7YgS9gmxx50Fqwef9CtQ/Y+LzZTQHXh7aSlqNwpdsWWwnqxqRm/CvD?=
 =?us-ascii?Q?sbJB8acXplxwPo5My4P++3QW3lpk5yIfh+2J5CPHkkPqPjohzjpah1l0LfaH?=
 =?us-ascii?Q?mt3MktWfvPoCZm0s5iWZDwz0MOFtW1Tr3fldqxtWYu78WSHC1TXGC0YdxIR7?=
 =?us-ascii?Q?DX10M0rbPhXr/yGXgDCWvvNky6y2EAWP2Tp47t8XuG4fL3E2bw0JcS+Kbhpd?=
 =?us-ascii?Q?AyVtaQFVHD572yXmMleZ9NFOOIXO+v7b9t9IkSPKRU1yPwi0Aw0Xid+hpVgN?=
 =?us-ascii?Q?McRvJvAbQC69z8l3wrvq22457awxiKoCYRW4NyKb6uL64r7R5ZHsZD8nnz8R?=
 =?us-ascii?Q?m1dTYMx2hHCmzc2Zwa7XSPYXhOALA7S9TeamY1dBnrrzM4gi7NCrV7GuUG0B?=
 =?us-ascii?Q?XwYUzn6WUTph40ypv0WcRRF9pNOw706lcTWzUprMR9vHP7nWQGplN3nzWtko?=
 =?us-ascii?Q?UrMAP+BN75B6J26nJkcCmRUArJkbopBIaOvS+CM8yrWopq8EhNW+4ORdtB94?=
 =?us-ascii?Q?lipYOuG8eEM+W3rwqFSdcyVmoLSlNWc+hh4qIImix0c+Rw=3D=3D?=
X-OriginatorOrg: suse.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 340045b5-7489-4d1a-0d41-08d93aeda46f
X-MS-Exchange-CrossTenant-AuthSource: AM6PR04MB5127.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2021 11:04:19.1126 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: f7a17af6-1c5c-4a36-aa8b-f5be247aa4ba
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: twdcz5Qmul5BwqwStNAgaVUm6wCqsg3eZTXtmHQ2HD3EER5CA2ppq8DgHkVhUIG1KbDW275byakazxTWetxEWQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM7PR04MB6934
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: suse.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [194.104.109.102 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
X-Headers-End: 1lyBmz-0000WV-KM
Subject: [ibm-acpi-devel] ThinkPad: random failure of ACPI thermal zone THM0
 on resume
X-BeenThere: ibm-acpi-devel@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: thinkpad-acpi/ibm-acpi Linux driver development
 <ibm-acpi-devel.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=ibm-acpi-devel>
List-Post: <mailto:ibm-acpi-devel@lists.sourceforge.net>
List-Help: <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel>, 
 <mailto:ibm-acpi-devel-request@lists.sourceforge.net?subject=subscribe>
From: Stanislav Brabec via ibm-acpi-devel
 <ibm-acpi-devel@lists.sourceforge.net>
Reply-To: Stanislav Brabec <sbrabec@suse.com>
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-2"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

I just debugged a long lasting problem of my ThinkPad X1 Carbon 4th, =

model 20FB002UMC: There is a random problem with the 100% fan speed on =

resume. After the resume, the fan slowly raises its speed to the =

maximum. Reboot does not fix this problem, shutdown and power-on does. =

But after the boot and suspend, the problem randomly appears again.

The reproducibility varies on unknown conditions between ~5% to ~99%. =

Looking at the mailing lists, this is a common problem of many users =

with different ThinkPad models and different kernels. It appeared at =

least 3 years ago.

I made sys+proc dumps of the correct and the failed state, and narrowed =

the problem to the failed THM0 readout:

Resume with 100% fan speed gives following readouts:
x1:~ # cat /proc/acpi/ibm/thermal
temperatures:=A0=A0=A0 -128 -128 0 0 0 0 0 0

But later the resume returned with a properly working fan:
x1:~ # cat /proc/acpi/ibm/thermal
temperatures:=A0=A0=A0 44 -128 0 0 0 0 0 0

It implies that ACPI automatic fan regulation reads bad temperature and =

raises the fan speed to the maximum.

Watching dmesg of the failed and succeeded state, I see no significant =

differences. The suspend/resume log is not always consistent, but the =

standard log looks like, independently on fan regulation success/failure:

x1:~ # dmesg -c | grep -i '\(acpi\|thermal\|ibm\|thinkpad\)'
[12198.794282] ACPI: EC: interrupt blocked
[12198.833773] ACPI: Preparing to enter system sleep state S3
[12198.839765] ACPI: EC: event blocked
[12198.839767] ACPI: EC: EC stopped
[12198.849325] ACPI: Low-level resume complete
[12198.849414] ACPI: EC: EC started
[12198.854035] ACPI: Waking up from system sleep state S3
[12198.866982] ACPI: EC: interrupt unblocked
[12198.936739] ACPI: EC: event unblocked
[12199.080732] thinkpad_acpi: docked into hotplug port replicator

If I compare the whole suspend/resume logs, there are small differences =

in particular kernel logs, but again, I found no significant difference. =

If I exclude USB and network devices, I see changes only here:
bad to good:
-IRQ 16: no longer affine to CPU3
 =A0IRQ 122: no longer affine to CPU3
-IRQ 124: no longer affine to CPU3
+IRQ 123: no longer affine to CPU3
But another bad to good diff looks differently:
IRQ 122: no longer affine to CPU3
 =A0IRQ 123: no longer affine to CPU3
 =A0IRQ 131: no longer affine to CPU3
+IRQ 137: no longer affine to CPU3
So even this does not give any indication of the error source. (This is =

comparison from openSUSE Leap 15.3 kernel 5.3.18-59.5, as I did not get =

succeeded fan resume on the recent 5.13~rc7-1.1.g0a4a430 yet.)

Everything looks like a race condition in the ACPI on resume, but as far =

as logs show, there is no difference between succeeded and failed state. =

Does anybody have any ideas/patches/additional debug messages?


Reproducibility conditions:

Reproduced on 5.13~rc7-1.1.g0a4a430 with (maybe) 100%. Some older =

kernels or builds have a lower reproduction rate, so I downgraded to =

openSUSE Leap 15.3's kernel 5.3.18-59.5, which allows to get succeeded =

resume log.

The problem appears only for automatic fan speed regulation. If I turn =

off automatic (ACPI regulated) fan speed, fan does exactly what =

expected, if I return automatic mode, fan raises its speed again.

The problem was never seen in Windows. But the problem appears, even if =

I set acpi_os_name and acpi_osi to Windows. (Note that I do not know =

whether Windows uses automatic fan speed regulated by ACPI.)

The problem appears both with and without dock, with and without =

peripherals attached.

Here is a complete boot log from 5.13~rc7-1.1.g0a4a430:
https://drive.google.com/file/d/1-Ijs9Z-fg6LQqjH6iHMpyuEyOWjtWrbs/view?usp=
=3Dsharing
I failed to get a succeeded fan resume with this kernel yet.

-- =

Best Regards / S pozdravem,

Stanislav Brabec
software developer
---------------------------------------------------------------------
SUSE LINUX, s. r. o.                         e-mail: sbrabec@suse.com
K=F8i=BE=EDkova 148/34 (Corso IIa)                    tel: +420 284 084 060
186 00 Praha 8-Karl=EDn                          fax:  +420 284 084 001
Czech Republic                                    http://www.suse.cz/
PGP: 830B 40D5 9E05 35D8 5E27 6FA3 717C 209F A04F CD76



_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
