Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 840E631C5C6
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 16 Feb 2021 04:23:13 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lBqwX-00074i-Qv; Tue, 16 Feb 2021 03:22:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <njoshi1@lenovo.com>) id 1lBqwV-00074a-RD
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 16 Feb 2021 03:22:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RZ4yRyF3kx5q1AMuFpZoG7cbZDkn+TjviWiyAgREYR4=; b=XU8ctBwMSUwtTAH9VQ5Da76swM
 cNDfnTTkXyNYgvaF/vkHQvn+gMpkyYgWkecOGRPUTe68isabQUhfqZMdJ8m3LVKj6ogucUDIkCmpR
 RINKkhqd+n/vNV57WWCHvGiA/NUXH0KY0Ol472BVDhhap4k6cnNdvE2bt5SolYLDKjOI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RZ4yRyF3kx5q1AMuFpZoG7cbZDkn+TjviWiyAgREYR4=; b=I2nAedxPLXdtC3Sr8QNQEDdJU/
 cRnfojW3ppjU5vr5ENZNeTrjJ/j9swb1shY5ux/2zxXEICZKgnEgTfY0NqFZuGDQY3dj1/FM0ASOA
 HWju8pl0vSzIwByYQ5Zhr8fIgfR2ZwkhC0jSNenM1UW74V6PuxeEBWxiKRUX2ox17KKE=;
Received: from mail-eopbgr1310129.outbound.protection.outlook.com
 ([40.107.131.129] helo=APC01-SG2-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1lBqwF-00AQCc-4T
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 16 Feb 2021 03:22:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SiP58NiW5LrXCTVio3gCQPQoQ2OIBsWTNSDHQ/CkvgDxgI1/ZrVEXAMc4iupujE1oh9resFCEkXM5yqKho6R1ntNIEV1U02Q+a6zLCOmO7wyy1Y6n2+7tJcBthsaShOZf8q5rwlEPzCYKSylqs7PZCPLNQ3Ul1vqeZ8a8fROyQJvAaDAJvKPHhoTDTz46kK2GzHZewIouCEnavvK+ih5ETGR9nGr5KqVfTetqE496qF/KMBrtN8T7l9LjA7FxxX8YFSnxPspAOCIpuUQbYiRkte24uxMfJ7Wh8p9n4DGpydpKEcIO/gVB4QN5Qkm/ti9DV3yHMshZiyeUwxvS6y87w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RZ4yRyF3kx5q1AMuFpZoG7cbZDkn+TjviWiyAgREYR4=;
 b=kCfVGzFJvC2JZdexno7MW0dfKz2zhcr6PKw2zSMSvAL9iCZ8Xl4GR6G9OnfGqrusOr4uP3/3BajLXSGQ93+mbT0mauG5WTEl/Nhd9FOG/iLdetdytDBeCqQXufg//3pGzcdnjnQsafZ6ibBWxGe6U5z9YWXxSRMHRDTXWE+Bn6yhgzLNVE1oyi5pvJfKIPV+uovh8ILDzB5zJbTk8SHvE5OOjpgnHMQVNquLAznlq34fc/0CIpsxXcjsz92uLLktUIYx7dz4/0WdtsSsl/EgdIXRmz/tGGEr+cnH479O3Y7e1e4Sgr9oa/5SFV++Q2qWLootpCeCvsmgHdbgxqI0Gw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=lenovo.com; dmarc=pass action=none header.from=lenovo.com;
 dkim=pass header.d=lenovo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=LenovoBeijing.onmicrosoft.com; s=selector2-LenovoBeijing-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=RZ4yRyF3kx5q1AMuFpZoG7cbZDkn+TjviWiyAgREYR4=;
 b=RnH0qIxRRl+KwqACwo/2adlzwty2rvI3J506GdmdoBDE9N9hAqOXlkGGNa+VB7QqPWqQnySWQSqJK7O/8fchsG8aXfP1GEiW3GzO8ou7eORCDOcibDfDEKpVN0A/xeO5dyDErDRoRi2Fm5Z6JBRDj/Yq5VK+EIVrRZ2CHjLDyX8=
Received: from TY2PR03MB3645.apcprd03.prod.outlook.com (2603:1096:404:3f::21)
 by TYZPR03MB5773.apcprd03.prod.outlook.com (2603:1096:400:71::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3868.11; Tue, 16 Feb
 2021 03:22:01 +0000
Received: from TY2PR03MB3645.apcprd03.prod.outlook.com
 ([fe80::51c4:f02c:2dd9:a1c2]) by TY2PR03MB3645.apcprd03.prod.outlook.com
 ([fe80::51c4:f02c:2dd9:a1c2%7]) with mapi id 15.20.3868.025; Tue, 16 Feb 2021
 03:22:01 +0000
From: Nitin Joshi1 <njoshi1@lenovo.com>
To: Hans de Goede <hdegoede@redhat.com>, Nitin Joshi <nitjoshi@gmail.com>
Thread-Topic: [External]  Re: [PATCH 1/2] platorm/x86: thinkpad_acpi: sysfs
 interface to reduce wlan tx power
Thread-Index: AQHXA6md4JzowtMDok6lmnko0pGnHKpaHbwA
Date: Tue, 16 Feb 2021 03:22:00 +0000
Message-ID: <TY2PR03MB3645194A792490163CE4566F8C879@TY2PR03MB3645.apcprd03.prod.outlook.com>
References: <20210212055856.232702-1-njoshi1@lenovo.com>
 <aebc72ff-769b-f0b0-6cf6-186963bf726b@redhat.com>
In-Reply-To: <aebc72ff-769b-f0b0-6cf6-186963bf726b@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: redhat.com; dkim=none (message not signed)
 header.d=none;redhat.com; dmarc=none action=none header.from=lenovo.com;
x-originating-ip: [114.164.25.243]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9b430f3a-ddfd-4baf-0aa5-08d8d22a0671
x-ms-traffictypediagnostic: TYZPR03MB5773:
x-ld-processed: 5c7d0b28-bdf8-410c-aa93-4df372b16203,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <TYZPR03MB5773878F86B01A5AF89CDED98C879@TYZPR03MB5773.apcprd03.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3513;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: jlUMywSKtxVc/DuIvUGQ+x4R+//SQZ0Kbj7cQzARpLcOFQkzR4aio0fVUP/7jm37zkS7KD5HPWLfpfxY0CJhFhLQ/i47/JDyYLzBXCGuDx3MMovualkYsvEw/ng5qCJPJ6/Wi8zByYvN+4cU3EVrbvb0wgBSAxvPP5MEVk/IJyFrzxcMhG3bKVk1m5Xz4GBNMT6WbGC0op6MS5a+VtiFkvPknt05c3EAn/MbA/wLfd79fvLRgQXXPbMgSHvtt2UPw//4mpWFzfcPvbo2iVB0F2a5YYDYxA4fChcwiu5Z3yUdBBur7ld3jPQNrSkx/+pG1mo6KiPuwxo9e/4Teaq93/4Z4utgFdgsw26bDY2cAvNVqmldVeO3r3LplOkuclYk5Xsb1oBnRQYKDtXIr5g564RD7CpEKzVrNduJr3HbaZblGC4nVkfBsy/wLVud9M3yFhs0dhCSfMajE3shMbz1V6hpPSeWQZYarsLIINwOCZaRzJfT0bzWilCUhndaaL4Rtr72nlS8ohdJnbBS70L4c5rsYTGviegaqomuN7qeGbJRMc3EFKpkLHow1Bp9QLave/LWNlXepzBz26FofHdghI79bAzON9u3vqWLgci8jWA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:TY2PR03MB3645.apcprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(39860400002)(346002)(396003)(366004)(376002)(33656002)(966005)(55016002)(316002)(4326008)(9686003)(2906002)(478600001)(5660300002)(52536014)(8676002)(6506007)(110136005)(86362001)(66574015)(76116006)(54906003)(83380400001)(66476007)(26005)(8936002)(66556008)(64756008)(66446008)(66946007)(186003)(107886003)(71200400001)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?utf-8?B?RGdDSGxveFVUdFdKNlVNSmJ0enVhMkl4NXJ4bk5pZXRJbElxUHZEeWRHeEFp?=
 =?utf-8?B?OHc1WmNxaUJFU3l1aDFwMFBZdmlvajJzU0o5ZDNObzVJNmo4R0VkMlp1V1hr?=
 =?utf-8?B?eFNBS1RCaUlra0tZMUZraGFPOS9YTk5zclNBK2xuYjloTEh1Wmt1NlhwWldU?=
 =?utf-8?B?cmRqLzJOeVBIRHNDN1o5dDFGdW84VUF5eVpTNkJ5RGdVdmJ2K0dHSlFmSWt1?=
 =?utf-8?B?WjI0aUlGVWx6MzJ5UTRiWFI1OHRwQVJINHE2YTF4SGpDUkNlRkpuVnprUUxx?=
 =?utf-8?B?MGNOcjZwb2YwQzQ4eHVPdUVXdXRPU0JmNDNsR1hHQjl0eGpmN1N1bDlvOUNt?=
 =?utf-8?B?RmVNTmRFY2ltRnZ2SE0raUtIdTdiTWd1R2M5Zk5WQjdzYm4xYUs4eGhGa1pB?=
 =?utf-8?B?bjBobXJMVE9GUmNXM2RSa1p6UDJQN3Y0TmJ2NzhvRlBOTmR3cVY4aXh6RU55?=
 =?utf-8?B?T0NBUGZiVlEyTlhyWklXakxnUy9ZaUxaWlAvZ3NrUC9POWF6K01KUHZZWUF5?=
 =?utf-8?B?K3owWDlyR2t1QjZxUUVXZ25sZEg2eVZSOXhWcEFOZGI2d1lUbndJMXlRb3Fj?=
 =?utf-8?B?Q0FRRU40MmlkUG1GZXc0NmNWNDJiQzhzQkM0Vlhrc01RZVNjUnltQnpvRDVV?=
 =?utf-8?B?MXphY3d3aENkUlZHWndDNi9kK1VHNzAvTUJ3L0NsTzhlSm1MejNWNjlycUt2?=
 =?utf-8?B?enk1Sk8wUkhjbTJodVRrcUdLMnNjY1I4c25MWmhUR3RuRUdYUWhDaDdEakhj?=
 =?utf-8?B?NG51bVBCaGtSRXlMamp4eERIMTR6a2xTNmlwSXQ4QU9RcTFuZGRZbkFSUmJI?=
 =?utf-8?B?SWlLbFlrRThQbmtjRWlGQzU1MzlUSkswdExTTFJ3K3ErVWFkUk8vNjc2SldG?=
 =?utf-8?B?ZktEVFhTL1ZkVU9aYmptS050RHJCaUFONWtIZHVJYWxVZkpNNzRpSGNSc1Ru?=
 =?utf-8?B?WlRCTm5zWXl3ZU9FOC9CdDJFVW1XWWJFS253SllYWEJZbDkzZUR3a3V0YXgw?=
 =?utf-8?B?MkphZlNrNlNDWFJpL0wwTW1FZXVvamNCWmZ4V2lJd3BvR2RlemFPU3ZaSGFu?=
 =?utf-8?B?RTRiM0xHd1lYanBxaFgyUm9ldHo4N3dtZkpIVzNaQVNJNHkwTzkyUG1YLzYy?=
 =?utf-8?B?MngzMVVRVjVTMTk2MW95V2doNmpMZTZTeHBGc2NvbnozSVBYOE1aS0JEVGRp?=
 =?utf-8?B?QlBqZFJZRFMybUxUVisxL1h5VmFxWEpoN3NIWWpPMW40SG01RWY2ZVQ0N0c1?=
 =?utf-8?B?SHFsT2ZqZUxoSTJIUjRSeDc0SFVaWmlRWXdPcm1wb25XN2FiOVNvY1hKT1hv?=
 =?utf-8?B?akMzeTVPREcrb21hQU5ZZ1VyUGFDZDRqRm13eUtMTHR3enpQb1VLNWRBTmtl?=
 =?utf-8?B?STZ0WkovdER0V2o0MGl1QW5QRU1rSHQ2djkyakJLdTFTMWdrRnRQOHJVVFlG?=
 =?utf-8?B?MXJjSmg4RWVCOTBsL3ZyUmRCcDRoQWt5enlVanNQN29xR2c0OXJYczNVbzEv?=
 =?utf-8?B?b25EUjNiQmZvMmFFc1J1c21GVE5TTWJ1V001SlJXUU5BQTZUM2pJclJYcDQ0?=
 =?utf-8?B?UHg1cnNpS3RkdGhRZmRINFQ1M3BGRmczaDA1M1JVbzhDVTJpRTkvUm9FdTRy?=
 =?utf-8?B?UEh3RVNiblFiQWlwZEMzUHhSVEhkb0FyLy9JZ0NQSFgxMnh1TFYwQ2tRUWY3?=
 =?utf-8?B?UkM1QXZSeDkydXVtMTlXS3JoSy9oUy92dHAxN3dkaVdPbHErdDU3Y1I4dW82?=
 =?utf-8?Q?G5mf252wIzACOE/rIW8cxMVY2t0ZkkcrdIk7y/y?=
MIME-Version: 1.0
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: TY2PR03MB3645.apcprd03.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9b430f3a-ddfd-4baf-0aa5-08d8d22a0671
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2021 03:22:01.0186 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FW8kdAoza8OyfNAe//EfH5F9ruIvgkFmlggywNQzBu1y8jbH0uUYxK9A5S6LcvEt/4BlQIUuovA5DLyrrvs33Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: TYZPR03MB5773
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.131.129 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lBqwF-00AQCc-4T
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH 1/2] platorm/x86:
 thinkpad_acpi: sysfs interface to reduce wlan tx power
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
Cc: Mark RH Pearson <markpearson@lenovo.com>,
 "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGVsbG8gSGFucywNCg0KPi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+RnJvbTogSGFucyBk
ZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4NCj5TZW50OiBNb25kYXksIEZlYnJ1YXJ5IDE1
LCAyMDIxIDExOjQ4IFBNDQo+VG86IE5pdGluIEpvc2hpIDxuaXRqb3NoaUBnbWFpbC5jb20+DQo+
Q2M6IGlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldDsgcGxhdGZvcm0tZHJpdmVy
LQ0KPng4NkB2Z2VyLmtlcm5lbC5vcmc7IE5pdGluIEpvc2hpMSA8bmpvc2hpMUBsZW5vdm8uY29t
PjsgTWFyayBSSCBQZWFyc29uDQo+PG1hcmtwZWFyc29uQGxlbm92by5jb20+DQo+U3ViamVjdDog
W0V4dGVybmFsXSBSZTogW1BBVENIIDEvMl0gcGxhdG9ybS94ODY6IHRoaW5rcGFkX2FjcGk6IHN5
c2ZzDQo+aW50ZXJmYWNlIHRvIHJlZHVjZSB3bGFuIHR4IHBvd2VyDQo+DQo+SGkgTml0aW4sDQo+
DQo+T24gMi8xMi8yMSA2OjU4IEFNLCBOaXRpbiBKb3NoaSB3cm90ZToNCj4+IFNvbWUgbmV3ZXIg
VGhpbmtwYWRzIGhhdmUgdGhlIFdMQU4gYW50ZW5uYSBwbGFjZWQgY2xvc2UgdG8gdGhlIFdXQU4N
Cj4+IGFudGVubmEuIEluIHRoZXNlIGNhc2VzIEZDQyBjZXJ0aWZpY2F0aW9uIHJlcXVpcmVzIHRo
YXQgd2hlbiBXV0FOIGlzDQo+PiBhY3RpdmUgd2UgcmVkdWNlIFdMQU4gdHJhbnNtaXNzaW9uIHBv
d2VyLiBBIG5ldyBEeW5hbWljIFBvd2VyDQo+PiBSZWR1Y3Rpb24gQ29udHJvbCAoRFBSQykgbWV0
aG9kIGlzIGF2YWlsYWJsZSBmcm9tIHRoZSBCSU9TIG9uIHRoZXNlDQo+PiBwbGF0Zm9ybXMgdG8g
cmVkdWNlIG9yIHJlc3RvcmUgV0xBTiBUeCBwb3dlci4NCj4+DQo+PiBUaGlzIHBhdGNoIHByb3Zp
ZGVzIGEgc3lzZnMgaW50ZXJmYWNlIHRoYXQgdXNlcnNwYWNlIGNhbiB1c2UgdG8gYWRqdXN0DQo+
PiB0aGUgV0xBTiBwb3dlciBhcHByb3ByaWF0ZWx5Lg0KPj4NCj4+IFJldmlld2VkLWJ5OiBNYXJr
IFBlYXJzb24gPG1hcmtwZWFyc29uQGxlbm92by5jb20+DQo+PiBTaWduZWQtb2ZmLWJ5OiBOaXRp
biBKb3NoaSA8bmpvc2hpMUBsZW5vdm8uY29tPg0KPg0KPlRoaXMgcGF0Y2ggYXMgd2VsbCBhcyBw
YXRjaCAyLzIgZ2VuZXJhbGx5IGxvb2sgb2sgdG8gbWUuDQo+DQo+VGhlIG9uZSB0aGluZyB3aGlj
aCBzdGFuZHMgb3V0IGlzIHRoZToNCj4NCj4JCSp3bGFuX3R4cmVkdWNlID0gLTE7DQo+DQo+UmVz
cDoNCj4NCj4JCSp3d2FuX2FudGVubmF0eXBlID0gLTE7DQo+DQo+CWRlZmF1bHQ6DQo+CQlyZXR1
cm4gc3lzZnNfZW1pdChidWYsICJ1bmtub3duIHR5cGVcbiIpOw0KPg0KPkJpdHMsIHdoaWNoIEJh
cm5hYsOhcyBhbHJlYWR5IHBvaW50ZWQgb3V0Lg0KPg0KPklmIHlvdSBjYW4gcHJlcGFyZSBhIHYy
IG9mIHRoaXMgcGF0Y2gtc2V0IGFkZHJlc3NpbmcgYWxsIHRoZSByZXZpZXcgcmVtYXJrcw0KPndo
aWNoIHlvdSBoYXZlIHJlY2VpdmVkIHNvIGZhciB0aGVuIHRoYXQgd291bGQgYmUgZ3JlYXQuDQo+
DQpUaGFuayB5b3UgZm9yIHlvdXIgY29tbWVudC4NCkkgaGF2ZSBhbHJlYWR5IHByZXBhcmVkIHBh
dGNoIGFuZCB3aWxsIHNlbmQgcGF0Y2ggc29vbi4NCg0KPlJlZ2FyZHMsDQo+DQo+SGFucw0KVGhh
bmtzICYgUmVnYXJkcywNCk5pdGluIEpvc2hpIA0KDQo+DQo+DQo+DQo+DQo+PiAtLS0NCj4+ICAu
Li4vYWRtaW4tZ3VpZGUvbGFwdG9wcy90aGlua3BhZC1hY3BpLnJzdCAgICAgfCAgMTggKysrDQo+
PiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jICAgICAgICAgIHwgMTM2ICsr
KysrKysrKysrKysrKysrKw0KPj4gIDIgZmlsZXMgY2hhbmdlZCwgMTU0IGluc2VydGlvbnMoKykN
Cj4+DQo+PiBkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9sYXB0b3BzL3Ro
aW5rcGFkLWFjcGkucnN0DQo+PiBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvbGFwdG9wcy90
aGlua3BhZC1hY3BpLnJzdA0KPj4gaW5kZXggNWZlMWFkZTg4YzE3Li4xMDQxMDgxMWI5OTAgMTAw
NjQ0DQo+PiAtLS0gYS9Eb2N1bWVudGF0aW9uL2FkbWluLWd1aWRlL2xhcHRvcHMvdGhpbmtwYWQt
YWNwaS5yc3QNCj4+ICsrKyBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvbGFwdG9wcy90aGlu
a3BhZC1hY3BpLnJzdA0KPj4gQEAgLTUxLDYgKzUxLDcgQEAgZGV0YWlsZWQgZGVzY3JpcHRpb24p
Og0KPj4gIAktIFVXQiBlbmFibGUgYW5kIGRpc2FibGUNCj4+ICAJLSBMQ0QgU2hhZG93IChQcml2
YWN5R3VhcmQpIGVuYWJsZSBhbmQgZGlzYWJsZQ0KPj4gIAktIExhcCBtb2RlIHNlbnNvcg0KPj4g
KwktIFdMQU4gdHJhbnNtaXNzaW9uIHBvd2VyIGNvbnRyb2wNCj4+DQo+PiAgQSBjb21wYXRpYmls
aXR5IHRhYmxlIGJ5IG1vZGVsIGFuZCBmZWF0dXJlIGlzIG1haW50YWluZWQgb24gdGhlIHdlYg0K
Pj4gc2l0ZSwgaHR0cDovL2libS1hY3BpLnNmLm5ldC8uIEkgYXBwcmVjaWF0ZSBhbnkgc3VjY2Vz
cyBvciBmYWlsdXJlIEBADQo+PiAtMTQ0Nyw2ICsxNDQ4LDIzIEBAIHRoZXkgZGlmZmVyIGJldHdl
ZW4gZGVzayBhbmQgbGFwIG1vZGUuDQo+PiAgVGhlIHByb3BlcnR5IGlzIHJlYWQtb25seS4gSWYg
dGhlIHBsYXRmb3JtIGRvZXNuJ3QgaGF2ZSBzdXBwb3J0IHRoZQ0KPj4gc3lzZnMgIGNsYXNzIGlz
IG5vdCBjcmVhdGVkLg0KPj4NCj4+ICtXTEFOIHRyYW5zbWlzc2lvbiBwb3dlciBjb250cm9sDQo+
PiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4+ICsNCj4+ICtzeXNmczogd2xh
bl90eF9zdHJlbmd0aF9yZWR1Y2UNCj4+ICsNCj4+ICtTb21lIG5ld2VyIFRoaW5rcGFkcyBoYXZl
IHRoZSBXTEFOIGFudGVubmEgcGxhY2VkIGNsb3NlIHRvIHRoZSBXV0FODQo+YW50ZW5uYS4NCj4+
ICtUaGlzIGludGVyZmFjZSB3aWxsIGJlIHVzZWQgYnkgdXNlcnNwYWNlIHRvIHJlZHVjZSB0aGUg
V0xBTiBUeCBwb3dlcg0KPj4gK3N0cmVuZ3RoIHdoZW4gV1dBTiBpcyBhY3RpdmUsIGFzIGlzIHJl
cXVpcmVkIGZvciBGQ0MgY2VydGlmaWNhdGlvbi4NCj4+ICsNCj4+ICtUaGUgYXZhaWxhYmxlIGNv
bW1hbmRzIGFyZTo6DQo+PiArDQo+PiArICAgICAgICBlY2hvICcwJyA+DQo+L3N5cy9kZXZpY2Vz
L3BsYXRmb3JtL3RoaW5rcGFkX2FjcGkvd2xhbl90eF9zdHJlbmd0aF9yZWR1Y2UNCj4+ICsgICAg
ICAgIGVjaG8gJzEnID4NCj4+ICsgL3N5cy9kZXZpY2VzL3BsYXRmb3JtL3RoaW5rcGFkX2FjcGkv
d2xhbl90eF9zdHJlbmd0aF9yZWR1Y2UNCj4+ICsNCj4+ICtUaGUgZmlyc3QgY29tbWFuZCByZXN0
b3JlcyB0aGUgd2xhbiB0cmFuc21pc3Npb24gcG93ZXIgYW5kIHRoZSBsYXR0ZXINCj4+ICtvbmUg
cmVkdWNlcyB3bGFuIHRyYW5zbWlzc2lvbiBwb3dlci4NCj4+ICsNCj4+ICBFWFBFUklNRU5UQUw6
IFVXQg0KPj4gIC0tLS0tLS0tLS0tLS0tLS0tDQo+Pg0KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMv
cGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYw0KPj4gYi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90
aGlua3BhZF9hY3BpLmMNCj4+IGluZGV4IGYzZThlY2E4ZDg2ZC4uNmRiYmQ0YTE0MjY0IDEwMDY0
NA0KPj4gLS0tIGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jDQo+PiArKysg
Yi9kcml2ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMNCj4+IEBAIC05OTgzLDYgKzk5
ODMsMTM4IEBAIHN0YXRpYyBzdHJ1Y3QgaWJtX3N0cnVjdCBwcm94c2Vuc29yX2RyaXZlcl9kYXRh
DQo+PSB7DQo+PiAgCS5leGl0ID0gcHJveHNlbnNvcl9leGl0LA0KPj4gIH07DQo+Pg0KPj4NCj4r
LyoqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKg0KPioqKioqDQo+PiArKioqKioNCj4+ICsgKiBEUFJDKER5bmFtaWMgUG93ZXIgUmVk
dWN0aW9uIENvbnRyb2wpIHN1YmRyaXZlciwgZm9yIHRoZSBMZW5vdm8NCj4+ICtXV0FODQo+PiAr
ICogYW5kIFdMQU4gZmVhdHVyZS4NCj4+ICsgKi8NCj4+ICsjZGVmaW5lIERQUkNfR0VUX1dMQU5f
U1RBVEUgICAgICAgICAgICAgMHgyMDAwMA0KPj4gKyNkZWZpbmUgRFBSQ19TRVRfV0xBTl9QT1dF
Ul9SRURVQ0UgICAgICAweDAwMDMwMDEwDQo+PiArI2RlZmluZSBEUFJDX1NFVF9XTEFOX1BPV0VS
X0ZVTEwgICAgICAgIDB4MDAwMzAxMDANCj4+ICtzdGF0aWMgaW50IGhhc193bGFudHhyZWR1Y2U7
DQo+PiArc3RhdGljIGludCB3bGFuX3R4cmVkdWNlOw0KPj4gKw0KPj4gK3N0YXRpYyBpbnQgZHBy
Y19jb21tYW5kKGludCBjb21tYW5kLCBpbnQgKm91dHB1dCkgew0KPj4gKwlhY3BpX2hhbmRsZSBk
cHJjX2hhbmRsZTsNCj4+ICsNCj4+ICsJaWYgKEFDUElfRkFJTFVSRShhY3BpX2dldF9oYW5kbGUo
aGtleV9oYW5kbGUsICJEUFJDIiwNCj4mZHByY19oYW5kbGUpKSkgew0KPj4gKwkJLyogUGxhdGZv
cm0gZG9lc24ndCBzdXBwb3J0IERQUkMgKi8NCj4+ICsJCXJldHVybiAtRU5PREVWOw0KPj4gKwl9
DQo+PiArDQo+PiArCWlmICghYWNwaV9ldmFsZihkcHJjX2hhbmRsZSwgb3V0cHV0LCBOVUxMLCAi
ZGQiLCBjb21tYW5kKSkNCj4+ICsJCXJldHVybiAtRUlPOw0KPj4gKw0KPj4gKwkvKg0KPj4gKwkg
KiBNRVRIT0RfRVJSIGdldHMgcmV0dXJuZWQgb24gZGV2aWNlcyB3aGVyZSBmZXcgY29tbWFuZHMg
YXJlDQo+bm90IHN1cHBvcnRlZA0KPj4gKwkgKiBmb3IgZXhhbXBsZSBXTEFOIHBvd2VyIHJlZHVj
ZSBjb21tYW5kIGlzIG5vdCBzdXBwb3J0ZWQgb24NCj5zb21lIGRldmljZXMuDQo+PiArCSAqLw0K
Pj4gKwlpZiAoKm91dHB1dCAmIE1FVEhPRF9FUlIpDQo+PiArCQlyZXR1cm4gLUVOT0RFVjsNCj4+
ICsNCj4+ICsJcmV0dXJuIDA7DQo+PiArfQ0KPj4gKw0KPj4gK3N0YXRpYyBpbnQgZ2V0X3dsYW5f
c3RhdGUoaW50ICpoYXNfd2xhbnR4cmVkdWNlLCBpbnQgKndsYW5fdHhyZWR1Y2UpDQo+PiArew0K
Pj4gKwlpbnQgb3V0cHV0LCBlcnI7DQo+PiArDQo+PiArCS8qIEdldCBjdXJyZW50IFdMQU4gUG93
ZXIgVHJhbnNtaXNzaW9uIHN0YXRlICovDQo+PiArCWVyciA9IGRwcmNfY29tbWFuZChEUFJDX0dF
VF9XTEFOX1NUQVRFLCAmb3V0cHV0KTsNCj4+ICsJaWYgKGVycikNCj4+ICsJCXJldHVybiBlcnI7
DQo+PiArDQo+PiArCWlmIChvdXRwdXQgJiBCSVQoNCkpDQo+PiArCQkqd2xhbl90eHJlZHVjZSA9
IDE7DQo+PiArCWVsc2UgaWYgKG91dHB1dCAmIEJJVCg4KSkNCj4+ICsJCSp3bGFuX3R4cmVkdWNl
ID0gMDsNCj4+ICsJZWxzZQ0KPj4gKwkJKndsYW5fdHhyZWR1Y2UgPSAtMTsNCj4+ICsNCj4+ICsJ
Kmhhc193bGFudHhyZWR1Y2UgPSAxOw0KPj4gKwlyZXR1cm4gMDsNCj4+ICt9DQo+PiArDQo+PiAr
Lyogc3lzZnMgd2xhbiBlbnRyeSAqLw0KPj4gK3N0YXRpYyBzc2l6ZV90IHdsYW5fdHhfc3RyZW5n
dGhfcmVkdWNlX3Nob3coc3RydWN0IGRldmljZSAqZGV2LA0KPj4gKwkJCQlzdHJ1Y3QgZGV2aWNl
X2F0dHJpYnV0ZSAqYXR0ciwNCj4+ICsJCQkJY2hhciAqYnVmKQ0KPj4gK3sNCj4+ICsJaW50IGVy
cjsNCj4+ICsNCj4+ICsJZXJyID0gZ2V0X3dsYW5fc3RhdGUoJmhhc193bGFudHhyZWR1Y2UsICZ3
bGFuX3R4cmVkdWNlKTsNCj4+ICsJaWYgKGVycikNCj4+ICsJCXJldHVybiBlcnI7DQo+PiArDQo+
PiArCXJldHVybiBzeXNmc19lbWl0KGJ1ZiwgIiVkXG4iLCB3bGFuX3R4cmVkdWNlKTsgfQ0KPj4g
Kw0KPj4gK3N0YXRpYyBzc2l6ZV90IHdsYW5fdHhfc3RyZW5ndGhfcmVkdWNlX3N0b3JlKHN0cnVj
dCBkZXZpY2UgKmRldiwNCj4+ICsJCQkJc3RydWN0IGRldmljZV9hdHRyaWJ1dGUgKmF0dHIsDQo+
PiArCQkJCWNvbnN0IGNoYXIgKmJ1Ziwgc2l6ZV90IGNvdW50KQ0KPj4gK3sNCj4+ICsJaW50IG91
dHB1dCwgZXJyOw0KPj4gKwl1bnNpZ25lZCBsb25nIHQ7DQo+PiArDQo+PiArCWlmIChwYXJzZV9z
dHJ0b3VsKGJ1ZiwgMSwgJnQpKQ0KPj4gKwkJcmV0dXJuIC1FSU5WQUw7DQo+PiArDQo+PiArCXRw
YWNwaV9kaXNjbG9zZV91c2VydGFzayhhdHRyLT5hdHRyLm5hbWUsDQo+PiArCQkJCSJXTEFOIHR4
IHN0cmVuZ3RoIHJlZHVjZWQgJWx1XG4iLCB0KTsNCj4+ICsNCj4+ICsJc3dpdGNoICh0KSB7DQo+
PiArCWNhc2UgMDoNCj4+ICsJCWVyciA9IGRwcmNfY29tbWFuZChEUFJDX1NFVF9XTEFOX1BPV0VS
X0ZVTEwsDQo+Jm91dHB1dCk7DQo+PiArCQlicmVhazsNCj4+ICsJY2FzZSAxOg0KPj4gKwkJZXJy
ID0gZHByY19jb21tYW5kKERQUkNfU0VUX1dMQU5fUE9XRVJfUkVEVUNFLA0KPiZvdXRwdXQpOw0K
Pj4gKwkJYnJlYWs7DQo+PiArCWRlZmF1bHQ6DQo+PiArCQllcnIgPSAtRUlOVkFMOw0KPj4gKwkJ
ZGV2X2VycigmdHBhY3BpX3BkZXYtPmRldiwgIlVua25vd24gb3BlcmF0aW5nIG1vZGUuDQo+SWdu
b3JpbmdcbiIpOw0KPj4gKwkJYnJlYWs7DQo+PiArCX0NCj4+ICsNCj4+ICsJc3lzZnNfbm90aWZ5
KCZ0cGFjcGlfcGRldi0+ZGV2LmtvYmosIE5VTEwsDQo+IndsYW5fdHhfc3RyZW5ndGhfcmVkdWNl
Iik7DQo+PiArCXJldHVybiBjb3VudDsNCj4+ICt9DQo+PiArc3RhdGljIERFVklDRV9BVFRSX1JX
KHdsYW5fdHhfc3RyZW5ndGhfcmVkdWNlKTsNCj4+ICsNCj4+ICtzdGF0aWMgaW50IHRwYWNwaV9k
cHJjX2luaXQoc3RydWN0IGlibV9pbml0X3N0cnVjdCAqaWlibSkgew0KPj4gKwlpbnQgd2xhbnR4
X2VyciwgZXJyOw0KPj4gKw0KPj4gKwl3bGFudHhfZXJyID0gZ2V0X3dsYW5fc3RhdGUoJmhhc193
bGFudHhyZWR1Y2UsICZ3bGFuX3R4cmVkdWNlKTsNCj4+ICsJLyoNCj4+ICsJICogSWYgc3VwcG9y
dCBpc24ndCBhdmFpbGFibGUgKEVOT0RFVikgZm9yIGJvdGggZGV2aWNlcyB0aGVuIHF1aXQsIGJ1
dA0KPj4gKwkgKiBkb24ndCByZXR1cm4gYW4gZXJyb3IuDQo+PiArCSAqLw0KPj4gKwlpZiAod2xh
bnR4X2VyciA9PSAtRU5PREVWKQ0KPj4gKwkJcmV0dXJuIDA7DQo+PiArCS8qIE90aGVyd2lzZSwg
aWYgdGhlcmUgd2FzIGFuIGVycm9yIHJldHVybiBpdCAqLw0KPj4gKwlpZiAod2xhbnR4X2VyciAm
JiAod2xhbnR4X2VyciAhPSAtRU5PREVWKSkNCj4+ICsJCXJldHVybiB3bGFudHhfZXJyOw0KPj4g
Kw0KPj4gKwlpZiAoaGFzX3dsYW50eHJlZHVjZSkgew0KPj4gKwkJZXJyID0gc3lzZnNfY3JlYXRl
X2ZpbGUoJnRwYWNwaV9wZGV2LT5kZXYua29iaiwNCj4+ICsJCQkJJmRldl9hdHRyX3dsYW5fdHhf
c3RyZW5ndGhfcmVkdWNlLmF0dHIpOw0KPj4gKwkJaWYgKGVycikNCj4+ICsJCQlyZXR1cm4gZXJy
Ow0KPj4gKwl9DQo+PiArCXJldHVybiAwOw0KPj4gK30NCj4+ICsNCj4+ICtzdGF0aWMgdm9pZCBk
cHJjX2V4aXQodm9pZCkNCj4+ICt7DQo+PiArCWlmIChoYXNfd2xhbnR4cmVkdWNlKQ0KPj4gKwkJ
c3lzZnNfcmVtb3ZlX2ZpbGUoJnRwYWNwaV9wZGV2LT5kZXYua29iaiwNCj4+ICsmZGV2X2F0dHJf
d2xhbl90eF9zdHJlbmd0aF9yZWR1Y2UuYXR0cik7DQo+PiArfQ0KPj4gKw0KPj4gK3N0YXRpYyBz
dHJ1Y3QgaWJtX3N0cnVjdCBkcHJjX2RyaXZlcl9kYXRhID0gew0KPj4gKwkubmFtZSA9ICJkcHJj
IiwNCj4+ICsJLmV4aXQgPSBkcHJjX2V4aXQsDQo+PiArfTsNCj4+ICsNCj4+DQo+LyoqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioN
Cj4qKioqKioqKioqKioNCj4+DQo+KioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioqKioq
KioqKioqKioqKioqKioqKioqKioqKioqKioqKioNCj4qKioqKioqKioqKg0KPj4gICAqDQo+PiBA
QCAtMTA0NzUsNiArMTA2MDcsMTAgQEAgc3RhdGljIHN0cnVjdCBpYm1faW5pdF9zdHJ1Y3QgaWJt
c19pbml0W10NCj5fX2luaXRkYXRhID0gew0KPj4gIAkJLmluaXQgPSB0cGFjcGlfcHJveHNlbnNv
cl9pbml0LA0KPj4gIAkJLmRhdGEgPSAmcHJveHNlbnNvcl9kcml2ZXJfZGF0YSwNCj4+ICAJfSwN
Cj4+ICsJew0KPj4gKwkJLmluaXQgPSB0cGFjcGlfZHByY19pbml0LA0KPj4gKwkJLmRhdGEgPSAm
ZHByY19kcml2ZXJfZGF0YSwNCj4+ICsJfSwNCj4+ICB9Ow0KPj4NCj4+ICBzdGF0aWMgaW50IF9f
aW5pdCBzZXRfaWJtX3BhcmFtKGNvbnN0IGNoYXIgKnZhbCwgY29uc3Qgc3RydWN0DQo+PiBrZXJu
ZWxfcGFyYW0gKmtwKQ0KPj4NCg0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZlbEBs
aXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMv
bGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
