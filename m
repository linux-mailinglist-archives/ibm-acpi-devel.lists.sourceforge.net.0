Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 74878A7BD61
	for <lists+ibm-acpi-devel@lfdr.de>; Fri,  4 Apr 2025 15:15:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1u0gt4-0007Ke-An;
	Fri, 04 Apr 2025 13:15:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <emma.dahlbo@igel.com>) id 1u0gt2-0007KQ-Ub
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 04 Apr 2025 13:15:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:MIME-Version:Content-Type:Message-ID:
 Date:Subject:To:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RT4awkF0CHgDtf/+JHM3tgdmZZv6FRdIxBQNFgpv4g8=; b=ESsXoSDQQrcpi4qnF8fDh5lRj7
 qIgSDtnj+iuTr1Vsee2xgZuiMx60ObQu1cVlOkry+Ya1RLPI4uXyyp6709ke7bf++otbzKZo3LKYM
 zix3lgFtAWqcDcPHTn8lkFIhc32Ijzrb5tN515+4Ka/juC16ngIwzA73kFPHOa2OuL0g=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:MIME-Version:Content-Type:Message-ID:Date:Subject:To:From:
 Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RT4awkF0CHgDtf/+JHM3tgdmZZv6FRdIxBQNFgpv4g8=; b=K
 2978RUeNyO515ZRm3j8qY75COQeIKWdleqPnGc7sXKBxZYg2swYwDucqz+78XOhN1sQitw6Jv0cNW
 NQyT8Y+7bhqfZ+3DMvWpmkSE8TDwpmbK4eIMghmnwCM7ds3e8TICSvOTYwcnQQ2aS/JCagVvwqHSV
 CiUdsGQ+fGkmgWB4=;
Received: from mail-db8eur05on2131.outbound.protection.outlook.com
 ([40.107.20.131] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1u0gsm-0004OU-EI for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 04 Apr 2025 13:15:09 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QjLIRPUw8OdfjBanrVyHCYdXMa9msMrXtnSsyJb4GJ5Kto3T0nuTRe2QY/XNbeIcWAQ2YudEnm0I4yV6eB8o4KvUf0/SEGUzjvPzDH9M0Rr2ex/7zo7VNBpxvr1o1EI4CdziyqtAXdktuMGYDpoJIF0LXaTiKmuu+ciXeI7IwiSFSJQHqQfm1U+cGaQwZQ4FEFzTRRbv6ZbtxDHU830RPszNNYsQdMgG0PFS7nbZck2EdcZe77DMasL6q3cdAdvKvsgYEpLfO+spJR5WzTLP9eGkCRxsD8Nqkvmx8K6xj9qHqc+pnSUFiQMFJP6v/Q1/S+CugAeI3ZXT9vOCJmRgpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=RT4awkF0CHgDtf/+JHM3tgdmZZv6FRdIxBQNFgpv4g8=;
 b=RSUZBATraycprQo8+IM1uZ5C2bdOAr8S2B0X9WElq5gYR24UOFXB764+NilvI1v9XI6fH1Ff/C5DgRl/3R+nwzC8sO59RRMXZHkF1MdjMLwOPSTLZgOEzhji5EuwMTm6ovCxH6Vwz45OIzV0/tbRkZ9ZyQxK0aAfnfy3ThEyUkvzDhS1OpQvZAcgw//89GhoaWRna22KOFnfV45M/pP/SeD132pPtAA7zmTQk4QsQzS8wcmAZecOd6duNU1H6pmYAnXl3C3g7NuVZiiSMnKG0yXgvcnXVhYVnQisclVPHrcfi8Jow3I64D4gqdG7y5Cb3linBguA3Vn2emQoc/4LHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 52.138.216.130) smtp.rcpttodomain=lists.sourceforge.net
 smtp.mailfrom=igel.com; dmarc=pass (p=reject sp=quarantine pct=100)
 action=none header.from=igel.com; dkim=none (message not signed); arc=none
 (0)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=igel.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RT4awkF0CHgDtf/+JHM3tgdmZZv6FRdIxBQNFgpv4g8=;
 b=NJw8U9IgnLzDOC2hL1jpz4bQJ2z3+BqaRMvyLDMZQpS7CotdWgmhscgCMiWQ01p87VL6bF2/4Gj7bp8qjM/ZdtalsPEuThMTjW2XjzvcCavjD1M6512fUUY95vspvRy7Cnco1d9/xT48bAvt+RphETsR6F7huexbhHTlb3kYGvg=
Received: from PR0P264CA0172.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1c::16)
 by PAWPR08MB10897.eurprd08.prod.outlook.com (2603:10a6:102:46a::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.49; Fri, 4 Apr
 2025 12:59:40 +0000
Received: from AM4PEPF00025F98.EURPRD83.prod.outlook.com
 (2603:10a6:100:1c:cafe::48) by PR0P264CA0172.outlook.office365.com
 (2603:10a6:100:1c::16) with Microsoft SMTP Server (version=TLS1_3,
 cipher=TLS_AES_256_GCM_SHA384) id 15.20.8606.27 via Frontend Transport; Fri,
 4 Apr 2025 12:59:40 +0000
X-MS-Exchange-Authentication-Results: spf=pass (sender IP is 52.138.216.130)
 smtp.mailfrom=igel.com; dkim=none (message not signed)
 header.d=none;dmarc=pass action=none header.from=igel.com;
Received-SPF: Pass (protection.outlook.com: domain of igel.com designates
 52.138.216.130 as permitted sender) receiver=protection.outlook.com;
 client-ip=52.138.216.130; helo=eu22-emailsignatures-cloud.codetwo.com; pr=C
Received: from eu22-emailsignatures-cloud.codetwo.com (52.138.216.130) by
 AM4PEPF00025F98.mail.protection.outlook.com (10.167.16.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8632.2 via Frontend Transport; Fri, 4 Apr 2025 12:59:40 +0000
Received: from DUZPR83CU001.outbound.protection.outlook.com (40.93.64.9) by
 eu22-emailsignatures-cloud.codetwo.com with CodeTwo SMTP Server (TLS12) via
 SMTP; Fri, 04 Apr 2025 12:59:39 +0000
Received: from AS8PR08MB9479.eurprd08.prod.outlook.com (2603:10a6:20b:5ec::21)
 by AS8PR08MB6278.eurprd08.prod.outlook.com (2603:10a6:20b:29a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8583.41; Fri, 4 Apr
 2025 12:59:37 +0000
Received: from AS8PR08MB9479.eurprd08.prod.outlook.com
 ([fe80::871e:2784:cc89:e226]) by AS8PR08MB9479.eurprd08.prod.outlook.com
 ([fe80::871e:2784:cc89:e226%5]) with mapi id 15.20.8583.041; Fri, 4 Apr 2025
 12:59:37 +0000
To: "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>
Thread-Topic: No ACPI event for F11 function key on Lenovo ThinkPad
Thread-Index: AQHbpWFX3zXzALl/1E+tulPosCwxDA==
Date: Fri, 4 Apr 2025 12:59:37 +0000
Message-ID: <AS8PR08MB94796AD5D1A7844E8F7393C394A92@AS8PR08MB9479.eurprd08.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
Authentication-Results-Original: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=igel.com;
x-ms-traffictypediagnostic: AS8PR08MB9479:EE_|AS8PR08MB6278:EE_|AM4PEPF00025F98:EE_|PAWPR08MB10897:EE_
X-MS-Office365-Filtering-Correlation-Id: da8aeebb-fae1-4852-3781-08dd73788fb9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam-Untrusted: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700018|8096899003|7053199007; 
X-Microsoft-Antispam-Message-Info-Original: =?us-ascii?Q?HZ2n10TCn41Xf6/ntdj9SD2nYBqHdV5tQHzal23KiqnIr9uAzoMRK9ja4Szg?=
 =?us-ascii?Q?BaxPBDC/fXFqJ0A2nLGoP/1zbN6i3hF3Sd0b1HY2tcWhjKHv/WAVRAEuNX/Z?=
 =?us-ascii?Q?YdyN4jA/L93tX4Jdm2saCWJzx2STVFFDsxN/LWwtseoS3vOfPDg1h29EanuF?=
 =?us-ascii?Q?pkPgvu7R5mXN1clF/ceLG73Nrd6axAWQgg0ws/jn4gLjL7av0H417GTGxb4l?=
 =?us-ascii?Q?+fV2ZK4XCj8pnbVKoOPmhzHR7Y7SqToclimAD1z93BI+sSMHmUw+CT/YDI7V?=
 =?us-ascii?Q?sVplmQoqfv+zux+oRCiLhmwUAXsyznXuI7i30CHogBfm7cmKIOdfNNQ/2gu3?=
 =?us-ascii?Q?5gu5heddkcBok9TTgQiGd7tlOpfqqJyonhjZec+Kt4Ti2lZ4H4SXm0u/2Wml?=
 =?us-ascii?Q?0DT7ldbU8N2VlVambJYtgTMgDIIgqZsG+EQNKPJTK9tLcS8sTp8NXlwXTcUN?=
 =?us-ascii?Q?gw4YgrPzGUW7GeFPdbMx6Ft6EF7FtaH5cz57m47u5kUfg9N5Ugq7EE7TwIHl?=
 =?us-ascii?Q?vB3z7ccIziBlZoBT5P358by8SaelepWKkZvz5KgNKxk+xxhv0EKZAfgKFCpg?=
 =?us-ascii?Q?YpGM8XtISiV/W/QvXV8C0yiXHnLtMI77fUAR2hK/OJv41zRcZWHo2YB1rm6O?=
 =?us-ascii?Q?nU3RIgU5XvWte4IkKEkvkFTs0h3LDsQDARb3oP8wq2xI03vjM+SP+u9m1Gq9?=
 =?us-ascii?Q?B2Z0m5BgIkTT9O+fh8cVuamX7xVVjVZipJEZomNygpTZEH/xFv6J7R7pFA/a?=
 =?us-ascii?Q?S69pfMCzoafnMHBfqiQnmWM66fx3WFSoCGR1eBLGw/TUBi43DuQXAEwYbugO?=
 =?us-ascii?Q?8ThMTcMzt2w3mS09Kw2def5wHO6LY4ww10BY0iieTHe0bzkKXN68LqlXwvBZ?=
 =?us-ascii?Q?autBrbVAc6hmtelI071n3zon+1Di/+yFbGePauP38aUtUdA+OpVsFgjxvygB?=
 =?us-ascii?Q?uj+5lIQ6tLMrzVFYaH9QaZYKJWqkhmv3fXa5fs0+U3R90YrHZHJ5sIbD4vAj?=
 =?us-ascii?Q?5CMQ8U/13ZQDIk4AvEC3e9ZGu46ju8eLJvSeOpzdGDdsDlrRYoGW8imCREiO?=
 =?us-ascii?Q?YY+UAlc+PfJ1mNm+JZJwxiBCSQzG1wJOgnJBs1xr5HVhchvtb/JQTluQHL0N?=
 =?us-ascii?Q?zfPhVUnUY2rHLMs6+KeNNWg1gw25i0uNWXdF+O+P5TGBPDEqmx/sOCzye//q?=
 =?us-ascii?Q?Xn1S386xDiTZYeT5prLwe0jBTL389zKYrx5Oa1Xh/Hg9AJrLnjaYpSiMiBsl?=
 =?us-ascii?Q?J/aKlT/kILYGz9Xo1IqdIRMYqaFUr1cvHJWm8O85YPcWtXt4+qG2UKzqsTeV?=
 =?us-ascii?Q?ivqp0ZnuTQuWYiUaObI6kC38uekL81/XH5nkoKvyJaKgZLNC5nYSO7G4T8hY?=
 =?us-ascii?Q?RZHgschxH6NgKYCG8x1RNw2omLaFeNgW4tF53Lj8UicUzQCWO2twEIX71eAt?=
 =?us-ascii?Q?cFHOB2XAAwEPWkfNtfq85zbGqVYo/cmu?=
X-Forefront-Antispam-Report-Untrusted: CIP:255.255.255.255; CTRY:; LANG:en;
 SCL:1; SRV:; IPV:NLI; SFV:NSPM; H:AS8PR08MB9479.eurprd08.prod.outlook.com;
 PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018)(8096899003)(7053199007);
 DIR:OUT; SFP:1102; 
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR08MB6278
X-CodeTwo-MessageID: 1904e4ec-e7cd-4ece-aa5c-0fc1a7696ff4.20250404125939@eu22-emailsignatures-cloud.codetwo.com
References: <a8308cd7-5943-48b6-a2e3-c7d371093887.20fc86b6-d351-4c25-aa7d-2c8a9fc6a0f0.42103c22-1ad8-4a83-a642-0c0da79ff41d@emailsignatures365.codetwo.com>
X-CodeTwoProcessed: true
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: AM4PEPF00025F98.EURPRD83.prod.outlook.com
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id-Prvs: 3a1a6277-8965-4c86-d85c-08dd73788e2d
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|35042699022|1800799024|82310400026|36860700013|14060799003|13003099007|8096899003|7053199007;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?WKRsviy1NbNp7oU/zXV2kAR7TUXc24m74A2oLghVASERQC4ntaZ9pcgZBHQS?=
 =?us-ascii?Q?C6VvAp3zas3559bGgVIWrXzLSPT0VKiOahMuAVf4d93W0KGD0K5Sg3sH69Jv?=
 =?us-ascii?Q?GiLDn5X+f5WLfCB94KlayWbrt+/FyU6q5eaW0ZcRBTMg7MJcXDxEXE/g3elJ?=
 =?us-ascii?Q?VUe4fPoNx3KzHBzxITDyBKfAfoCfwt1pYxECzimaeEQTyjzhSVxj4Jgywrf5?=
 =?us-ascii?Q?YUNFjxCOnE2dEHaQ+8MN4LOc0ud4Do9tIXxYvph/6zMji4k5fgQySWdX3IMw?=
 =?us-ascii?Q?slC4hGFjz7BbGFCVKCuQx7/6w389n5ykXJEJyojqeINbKXj6tO1wig42lJlI?=
 =?us-ascii?Q?fjyUpqduFTpXvw0Rz9pZ9Vjb77GiY96uLPwnFCS9zjBlLCUajEqsQaYqSaFo?=
 =?us-ascii?Q?6PC0kSe0+mm4upYHsNFPzRkyBAP8NyhOPAkIPxJMajGlD9wm3ZCKx3Qt8KCf?=
 =?us-ascii?Q?iV75sEe3IfSzYGxDGHoq5rnSOb4ePHbMk18ZKxBxiWFa4MNs6RtU+FUrRzJ4?=
 =?us-ascii?Q?AtXQJKOh8mi9+srw6cRU9VfmAu9GjM3M0zGUJN5i7kI9xSNxUA+L/T1wF4GR?=
 =?us-ascii?Q?0NCbVvfI0QDpwSfa80uuMhOmJyWWQJsBp/rpFOnDWlcu9TCUY0nhpaUydUmQ?=
 =?us-ascii?Q?ggE0f1BDbZQru0aL500AW7ISUlBG8TEzNhpuFjjyIOfMw90X2gBQF8Sh+NvH?=
 =?us-ascii?Q?oOTyfZhI9sT/EZNTrzuxuc0JvrARunZOQLpHYWOPx5rJwfySTO14Z8O6KTsM?=
 =?us-ascii?Q?c1lHT3N6yY+8wqH5Qp9bhjVZW5jW+8fIIZGd3PyIRDn7mUy3z6xiRpOA7mNS?=
 =?us-ascii?Q?vfW8h9JJzgN7zjL1/sdso6LT+8Hbnf5XtxJGMe9cGoUZgmn4DFhsgNak+teh?=
 =?us-ascii?Q?bFwXeWNVb4YXPTIZsYm62Mx++mUDpmmSAgnVYsxx5RU782ck6AW4oNif4FPn?=
 =?us-ascii?Q?lr8FH2vDM2LSuCv/P+WE6H8Ep8WjPAr1RL47qkengW3KLJkx6reZl+BxfXAk?=
 =?us-ascii?Q?4g5G84RwDf3nrAVZT8q8SDXXxLtIlcI+XNTCtCVwWZuUHQDgwEzqvWskvKgr?=
 =?us-ascii?Q?BAm5dITqRoMLMElAWKgZvI6pqHUK3AgrHmxU9mRXKB4lTEvsi1O5OijpskRA?=
 =?us-ascii?Q?lzrFwncnZdJjKmgQmGc99dF9CMYzkvdngO3I7tyfrvelBoFgTenNnU+kDOsb?=
 =?us-ascii?Q?+JgfFQZumM9l0I0ktEdJZCDCwUhzfCUVU6CQkTY0Dx/zPlaOMmSgklqO+ltM?=
 =?us-ascii?Q?03h2XfFM3ZfX5ngRESTlL/xgHXjZPAOf31Um6qLUuGAxFtEKaP83zD2bQR41?=
 =?us-ascii?Q?aE7KjR7bpvwh2qH5EFThmfUuoQI48DYOomk6lLGi8l9wc9pZW4e7WqEDEIPn?=
 =?us-ascii?Q?7QIGWtoEKrlS3O/nkJGknni9wqpCsnY56hnWdzIkJBuxQArZo5f9FUxWku9P?=
 =?us-ascii?Q?eSvFK4VdxCIuiLzBouc+BZ5tsY49ujcu?=
X-Forefront-Antispam-Report: CIP:52.138.216.130; CTRY:IE; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:eu22-emailsignatures-cloud.codetwo.com;
 PTR:eu22-emailsignatures-cloud.codetwo.com; CAT:NONE;
 SFS:(13230040)(376014)(35042699022)(1800799024)(82310400026)(36860700013)(14060799003)(13003099007)(8096899003)(7053199007);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: igel.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Apr 2025 12:59:40.0643 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: da8aeebb-fae1-4852-3781-08dd73788fb9
X-MS-Exchange-CrossTenant-Id: 3f044411-22ea-4ba1-82df-d85e25879b4f
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=3f044411-22ea-4ba1-82df-d85e25879b4f; Ip=[52.138.216.130];
 Helo=[eu22-emailsignatures-cloud.codetwo.com]
X-MS-Exchange-CrossTenant-AuthSource: AM4PEPF00025F98.EURPRD83.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PAWPR08MB10897
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hello, I recently ran into an issue with the Lenovo ThinkPad
 L14 Gen 5 (AMD) laptop when working with function keys. With Linux Kernel
 6.6, pressing FN+F11 will generate an ACPI event called "ibm/hotkey LEN0
 [...] Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.131 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.20.131 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [40.107.20.131 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.131 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1u0gsm-0004OU-EI
Subject: [ibm-acpi-devel] No ACPI event for F11 function key on Lenovo
 ThinkPad
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
From: Emma Dahlbo via ibm-acpi-devel <ibm-acpi-devel@lists.sourceforge.net>
Reply-To: Emma Dahlbo <emma.dahlbo@igel.com>
Content-Type: multipart/mixed; boundary="===============5953732976054728406=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============5953732976054728406==
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_AS8PR08MB94796AD5D1A7844E8F7393C394A92AS8PR08MB9479eurp_"

--_000_AS8PR08MB94796AD5D1A7844E8F7393C394A92AS8PR08MB9479eurp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hello,

I recently ran into an issue with the Lenovo ThinkPad L14 Gen 5 (AMD) lapto=
p when working with function keys. With Linux Kernel 6.6, pressing FN+F11 w=
ill generate an ACPI event called "ibm/hotkey LEN0268:00 00000080 00001320"=
. However, with versions 6.11 and 6.12, this key press does not generate an=
y ACPI event at all.

Additionally, there is an error in the journal:

kernel: thinkpad_acpi: unhandled HKEY 0x1320
kernel: thinkpad_acpi: please report the conditions when this event happene=
d to ibm-acpi-devel@lists.sourceforge.net

However, this error shows up in all kernel versions that I tested (6.6, 6.1=
1, 6.12) and seems to not be connected (at least not directly) to the ACPI =
issue.

I reproduced this issue both with IGEL OS and Ubuntu 24.10 (kernel 6.11).

Feel free to contact me if more details are needed!

Best regards,
Emma Dahlbo



Emma Dahlbo
Junior Linux Developer



emma.dahlbo@igel.com<mailto:emma.dahlbo@igel.com>
www.igel.com<https://www.igel.com/>

Take our Customer Experience Survey, Join the IGEL community and Stay infor=
med<https://www.igel.com/follow-us-now/>

IGEL Technology GmbH
Melli-Beese-Str. 3
86159 Augsburg


IGEL Technology GmbH, Maria-CunitzStr. 7, 28197 Bremen, Germany
Group CEO: Klaus Oestermann
Gesch=E4ftsf=FChrer: Matthias Haas, Thomas Frey
Amtsgericht Bremen: HRB 38302
VAT-ID: DE 343232864, WEEE-Reg.-No. DE 79295479

--_000_AS8PR08MB94796AD5D1A7844E8F7393C394A92AS8PR08MB9479eurp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"> P {margin-top:0;margin-bo=
ttom:0;} </style>
</head>
<body dir=3D"ltr">
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 12pt; color: rgb(0, 0, 0);">
Hello,</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 12pt; color: rgb(0, 0, 0);">
I recently ran into an issue with the Lenovo ThinkPad L14 Gen 5 (AMD) lapto=
p when working with function keys. With Linux Kernel 6.6, pressing FN+F11 w=
ill generate an ACPI event called &quot;ibm/hotkey LEN0268:00 00000080 0000=
1320&quot;. However, with versions 6.11 and
 6.12, this key press does not generate any ACPI event at all.&nbsp;</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 12pt; color: rgb(0, 0, 0);">
Additionally, there is an error in the journal:</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px; font-family: Aptos, Apto=
s_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-s=
ize: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px 40px; font-family: Aptos,=
 Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; f=
ont-size: 12pt; color: rgb(0, 0, 0);">
kernel: thinkpad_acpi: unhandled HKEY 0x1320<br>
kernel: thinkpad_acpi: please report the conditions when this event happene=
d to ibm-acpi-devel@lists.sourceforge.net</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px 40px; font-family: Aptos,=
 Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-serif; f=
ont-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px 40px 0px 0px; font-family=
: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-=
serif; font-size: 12pt; color: rgb(0, 0, 0);">
However, this error shows up in <b>all kernel versions</b>&nbsp;that I test=
ed (6.6, 6.11, 6.12) and seems to not be connected (at least not directly) =
to the ACPI issue.&nbsp;</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px 40px 0px 0px; font-family=
: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-=
serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px 40px 0px 0px; font-family=
: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-=
serif; font-size: 12pt; color: rgb(0, 0, 0);">
I reproduced this issue both with IGEL OS and Ubuntu 24.10 (kernel 6.11).</=
div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px 40px 0px 0px; font-family=
: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-=
serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px 40px 0px 0px; font-family=
: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-=
serif; font-size: 12pt; color: rgb(0, 0, 0);">
Feel free to contact me if more details are needed!</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px 40px 0px 0px; font-family=
: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-=
serif; font-size: 12pt; color: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px 40px 0px 0px; font-family=
: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-=
serif; font-size: 12pt; color: rgb(0, 0, 0);">
Best regards,</div>
<div class=3D"elementToProof" style=3D"text-align: left; text-indent: 0px; =
background-color: rgb(255, 255, 255); margin: 0px 40px 0px 0px; font-family=
: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica, sans-=
serif; font-size: 12pt; color: rgb(0, 0, 0);">
Emma Dahlbo</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
<div class=3D"elementToProof" style=3D"font-family: Aptos, Aptos_EmbeddedFo=
nt, Aptos_MSFontService, Calibri, Helvetica, sans-serif; font-size: 12pt; c=
olor: rgb(0, 0, 0);">
<br>
</div>
=0A=
=0A=
=0A=
<p style=3D"font-size: 10pt; font-family: &quot;Gotham Book&quot;;"><font s=
tyle=3D"font-size: 10pt; font-family: Verdana;" color=3D"#9a9a9a"><font sty=
le=3D"font-size: 10pt; font-family: Verdana;" color=3D"#7d7d7d"><font style=
=3D"font-size: 10pt;" color=3D"gray"><span style=3D"font-size: 10pt; font-f=
amily: Verdana;"><strong style=3D"font-size: 10pt;"><font color=3D"#3c8ca5"=
 style=3D"font-size: 10pt;"> Emma Dahlbo<br style=3D"font-size: 10pt;"></fo=
nt></strong></span></font></font></font><font style=3D"font-size: 10pt; fon=
t-family: Verdana;" color=3D"#9a9a9a"><font style=3D"font-size: 10pt; font-=
family: Verdana;" color=3D"#7d7d7d"><span style=3D"font-size: 10pt; font-fa=
mily: Verdana;"><font style=3D"font-size: 10pt;" color=3D"gray">Junior Linu=
x Developer<br style=3D"font-size: 10pt;"></font><br style=3D"font-family: =
Verdana; font-size: 10pt;"></span></font></font><font style=3D"font-size: 1=
0pt; font-family: Verdana;" color=3D"#7d7d7d"><font color=3D"#808080" style=
=3D"font-size: 10pt;"><br style=3D"font-size: 10pt;"><br style=3D"font-size=
: 10pt;"><a href=3D"mailto:emma.dahlbo@igel.com" style=3D"font-size: 10pt;"=
>emma.dahlbo@igel.com</a><br style=3D"font-size: 10pt;"><a title=3D"" href=
=3D"https://www.igel.com/" style=3D"font-size: 10pt;">www.igel.com</a></fon=
t></font></p><p style=3D"font-size: 10pt; font-family: &quot;Gotham Book&qu=
ot;;"><br style=3D"font-size: 10pt;"><a href=3D"https://www.igel.com/follow=
-us-now/" title=3D"https://www.igel.com/follow-us-now/" style=3D"font-famil=
y: Arial; background-color: rgb(255, 255, 255); font-size: 10pt;">Take our =
Customer Experience Survey, Join the IGEL community and Stay informed</a></=
p><span><font style=3D"FONT-SIZE: 8pt; FONT-FAMILY: Verdana" color=3D"#9a9a=
9a"><p style=3D"FONT-SIZE: 8pt; FONT-FAMILY: Gotham Book"><br><font color=
=3D"gray" face=3D"Verdana">IGEL Technology GmbH<br style=3D"FONT-FAMILY: Ve=
rdana">Melli-Beese-Str. 3<br style=3D"FONT-FAMILY: Verdana">86159 Augsburg<=
br><br style=3D"FONT-FAMILY: Verdana"><br>IGEL Technology GmbH,&nbsp;</font=
><font style=3D"FONT-SIZE: 8pt; FONT-FAMILY: Verdana" color=3D"#9a9a9a"><fo=
nt color=3D"gray" face=3D"Verdana">Maria-CunitzStr. 7</font></font><font co=
lor=3D"gray" face=3D"Verdana">, 28197 Bremen, Germany <br>Group CEO:&nbsp;<=
/font><span style=3D"color: rgb(128, 128, 128); font-family: Verdana;">Klau=
s Oestermann</span><font color=3D"gray" face=3D"Verdana"><br>Gesch&#xE4;fts=
f&#xFC;hrer: =0A=
Matthias Haas, Thomas Frey</font><br><font color=3D"gray" face=3D"Verdana">=
Amtsgericht Bremen: HRB 38302 <br>VAT-ID: DE =0A=
343232864, WEEE-Reg.-No. DE 79295479</font></p></font></span>=0A=
</body>
</html>

--_000_AS8PR08MB94796AD5D1A7844E8F7393C394A92AS8PR08MB9479eurp_--


--===============5953732976054728406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============5953732976054728406==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============5953732976054728406==--

