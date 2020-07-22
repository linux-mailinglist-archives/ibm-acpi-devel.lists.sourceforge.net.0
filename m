Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7761022E3B1
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Jul 2020 03:44:23 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jzsBT-0005bx-1o; Mon, 27 Jul 2020 01:44:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Mario.Limonciello@dell.com>) id 1jyKhj-00077J-6Q
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Jul 2020 19:47:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cQtrnplGg+Ow5+tF/vDqp1wtSCpcFCU9+x8MGIrFj0Q=; b=SsFZmS3pXm/zlS27XH3YfXKG7b
 IvAMmk9jqeXPrYLtz2xSdTROdn5SA8HDu6jJy1PbqAqk9eeRRtBvoFpvjsvmrkVoIlmJUWT2cgv1l
 zBIoDsJAdZImks+l7tMw6x29L8uSF6hvQ9zdazQFdqqzHdGl0f1SbP/Od8OO3Vh7Ew+o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cQtrnplGg+Ow5+tF/vDqp1wtSCpcFCU9+x8MGIrFj0Q=; b=lTypVTgaOQ+gXyuQdFo8PRKDwa
 MvPWa4Hx1/gAHnr52cs+iUWrtih/YMyIPnKieuATxW3wXIemG5VeL8EiqMfZmogXj7v9GpCFprxmN
 V1eV4xc4dnBvtxd0RsHCbnJgNJLMApmNSpX9VqDTaExYTIGHJD8f6PNARy8gaFoxsMH4=;
Received: from mx0a-00154904.pphosted.com ([148.163.133.20])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jyKhe-005GKG-Bf
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 22 Jul 2020 19:47:03 +0000
Received: from pps.filterd (m0170390.ppops.net [127.0.0.1])
 by mx0a-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 06MJfcat009980; Wed, 22 Jul 2020 15:46:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=cQtrnplGg+Ow5+tF/vDqp1wtSCpcFCU9+x8MGIrFj0Q=;
 b=fu2osj1CbDACtMBZADVXj99zx0p4KV0257fF1PbNUdMjTisnIq7omlmqnzWVTSJwkuAi
 YMeQukxGMlqCjiEL5DcfmPahVTlzHNSBSYZXvwGDJrPAUQ7sipeNNL37VVq7pEVIzI9u
 jvbtbAOELc9WwECJ0M4knfxqkyZxeWHLcUl+JURjpKQAHNwWZVdBCTLYcPE8M+653QYL
 aHdSkqFrMVcCd+vYSWH/B97V39heZTgsRkST95t801EGNtjAHADz/AaNMPZfwK9Nizvg
 nB1bJTKysIfrKlNzypDIQmudF3ZIv+U+OBkDyRdWOSX9ddsy1GiZLbAJiFR1GH+o4GGp tw== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0a-00154904.pphosted.com with ESMTP id 32bv54pged-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jul 2020 15:46:47 -0400
Received: from pps.filterd (m0134746.ppops.net [127.0.0.1])
 by mx0a-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 06MJhLX8132466; Wed, 22 Jul 2020 15:46:47 -0400
Received: from nam12-dm6-obe.outbound.protection.outlook.com
 (mail-dm6nam12lp2173.outbound.protection.outlook.com [104.47.59.173])
 by mx0a-00154901.pphosted.com with ESMTP id 32eugw0c6c-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jul 2020 15:46:47 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Jvl75A7bJiObYtwzMcH2wV2vmc7FSchQmMMT1aeWUHrHoz/jh7bcAKG8jtsAbG49GR7tze7N54CB7Ajb9T6Ac4rJATMDQeWrxPPP8pDhtBeKJ7hI/M4KHZG6ah7Gdn2WacDQdwXj7JNVfkF6sq/3tysTpWWgFmRz68b/yBQmYpkzpo4vE+JWZ1aCXEeZkzUSAzC2+ocn+KFkesADffUxZRfcG80/XYhCg8BHVA8LdSOn1dSUAeLIE40EElXdApDkcRet/S1S2b+1/kSyhL1ksa3Lm3HDbAvZgTzjejrC0ucZHdnkkMlZULugOelpCrNU144hRDi7pwnAXO27KauA2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cQtrnplGg+Ow5+tF/vDqp1wtSCpcFCU9+x8MGIrFj0Q=;
 b=h6KCJq+Dh17efxSikzTBhkKZ1afICmqpPNz6GfAWn2JCy4eNN6A4XdLQl3/YYtMHL6MQMWV6NbLARYh82HacLu4E0oJpOOzgWrd4ofq2cuDTTalgoBetqPBDkt0CKdq3Q1lNh1KI0PXeUpDQOgFsGg7KToOL+TeHtXIB5Xz7NryZq/ZUnQkldsxSpENnGv1QeOav6kdnSTo+bangWjSS0i0VRt+GpLaKDmhWRuJHzX5z/sA+8uKzcFPKiTNEfqEP70zbVRnbWlnV2iZWvI+dOTarCYl5wLGcQ/AzP5NG23iNoLBmnC49ie6J5P7dO1k49Ua+148QBRLxAHIuL8pmqQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Dell.onmicrosoft.com; 
 s=selector1-Dell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cQtrnplGg+Ow5+tF/vDqp1wtSCpcFCU9+x8MGIrFj0Q=;
 b=eJ/3W4AKjXqDs88SR4mVeOuMiap0nYXfxHv7RTiEntbxEHJGJPowF/v3AOqJTgRdd+I0VO3tgVVXaSGcKjDkHbxuiU9f9kSQZK8fIRJG00VAXpIzOmtEOgEcE72+ejJiBsfaAeEl3qpCpvm8xlODbsIouKu/VOzClV43TnTXsLs=
Received: from DM6PR19MB2636.namprd19.prod.outlook.com (2603:10b6:5:15f::15)
 by DM6PR19MB3002.namprd19.prod.outlook.com (2603:10b6:5:15e::31) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3216.22; Wed, 22 Jul
 2020 19:46:45 +0000
Received: from DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::f1c7:5bf4:a3b:ff40]) by DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::f1c7:5bf4:a3b:ff40%6]) with mapi id 15.20.3195.022; Wed, 22 Jul 2020
 19:46:45 +0000
From: "Limonciello, Mario" <Mario.Limonciello@dell.com>
To: Mark Pearson <markpearson@lenovo.com>
Thread-Topic: [External] RE: [PATCH] platform/x86: thinkpad_acpi: performance
 mode interface
Thread-Index: AQHWYEtB2AZ16m+5BkiCkmlUDRcurKkT57IggAAUiICAAACUUA==
Date: Wed, 22 Jul 2020 19:46:45 +0000
Message-ID: <DM6PR19MB26360DE8FCA56BC132644F98FA790@DM6PR19MB2636.namprd19.prod.outlook.com>
References: <markpearson@lenovo.com>
 <20200722171108.65185-1-markpearson@lenovo.com>
 <DM6PR19MB263650F7DC4B6680A5EFC5DAFA790@DM6PR19MB2636.namprd19.prod.outlook.com>
 <b79e0359-536d-f496-a01e-fe4c4b7796cc@lenovo.com>
In-Reply-To: <b79e0359-536d-f496-a01e-fe4c4b7796cc@lenovo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2020-07-22T19:44:02.7199229Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_ActionId=1e81fbb1-7064-450d-aa62-65c1eb640132;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual
authentication-results: lenovo.com; dkim=none (message not signed)
 header.d=none;lenovo.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [76.251.167.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f6a3e20c-040b-4002-3a79-08d82e77f714
x-ms-traffictypediagnostic: DM6PR19MB3002:
x-microsoft-antispam-prvs: <DM6PR19MB3002E9DEF6D8D976A8D2238BFA790@DM6PR19MB3002.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zKkgtuOr1DJyG2+SAbYVA74VKr1Tsq6yvttXcZ5uGFjPELs+WhprXQ2wvtEZR5APoh+wCc39e0PKI1cgMC4CmT5hFpFv0hK9UT54tMZjeqJBJjo8RhzMgQZ1FUDlV5uBi5Reqna5r6RasArVENOK2DrW1EZrQTeGzkJreM6k039aoydjBr/HT4OLMsogHEbO3WygsUpKweBF9PW60cL3mq9FQzcF+5VztnO2+p6diPvJ6gNPrQe9UIXIAZX0gr3NcLEdwNvE8vhJKUynuxNlSaNp72lvF1/V+/ZMdVMJlbRVu4TZjP6jwl2k08N+foLulX+zaLA8DNdFkxeNm6bNAg==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR19MB2636.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(376002)(136003)(346002)(366004)(396003)(39860400002)(9686003)(66446008)(66476007)(52536014)(64756008)(66556008)(66946007)(76116006)(55016002)(186003)(26005)(5660300002)(2906002)(786003)(54906003)(33656002)(86362001)(71200400001)(478600001)(6506007)(53546011)(83380400001)(8936002)(4326008)(316002)(6916009)(7696005)(8676002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: s0dg1mFMZpA14LZe5iQSywcIhDJCp5CU5jB21r+3yGO/akTiOBqEUu+mrhTBM8yvJhG6az2WfDUfjksdZ8Awf9isapRQ6GwG2mapCoaBgqx2qcQTeabdvo3KL8Xw+dfQUUvpnDvu/595/hHCq87bV2C6nk4zlXNVvwle8/PugATMcnAlfSoSamKDhl4MAGJWP7mV1dwLqlKImFVjPdRFV0ABm13OZvCbxLt8zIxpMHz2uSum5y1irAwtN5sXfZAtcY0JBzwZ3TnUBpGjvN45ei+eMqO9ZXtNKjR8sQG84gMomcEOLVUfcppTcbewdX49qfrWxkgy93tdFiTzkpzkMkSM20aaFMD109EO/ZXjoKDEO+D5cCB3VDcd7kR8KR0YAcOnwikbHyBpTDxmodEv4GFPerAnVUmh4absimiNF366mExZhkbX4GFZ4ZtDV3XqNu8BjcyyIS+2HyFCqme+1FEiBUbRZBnAbbVLlhZWlXDZ/x0LSOFT1lM7PmR7LB1Z
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR19MB2636.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f6a3e20c-040b-4002-3a79-08d82e77f714
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2020 19:46:45.2779 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZRXxFGEn0H2aK9Qc6xfn/h3SkraucQYrpG8Jx2yCkajsRd3hm8T0xsWPTXeVDEykfhFaJTKWb8lBP5SMWVfpAYGLJsCIJ/CEhoa9/u/wVe8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR19MB3002
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-07-22_13:2020-07-22,
 2020-07-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0
 phishscore=0 mlxlogscore=999 priorityscore=1501 lowpriorityscore=0
 impostorscore=0 mlxscore=0 bulkscore=0 adultscore=0 clxscore=1015
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2006250000 definitions=main-2007220124
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 phishscore=0
 bulkscore=0 suspectscore=0
 spamscore=0 mlxscore=0 mlxlogscore=999 malwarescore=0 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007220124
X-Spam-Score: -0.6 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.133.20 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.5 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jyKhe-005GKG-Bf
X-Mailman-Approved-At: Mon, 27 Jul 2020 01:43:53 +0000
Subject: Re: [ibm-acpi-devel] [External] RE: [PATCH] platform/x86:
 thinkpad_acpi: performance mode interface
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
Cc: "bberg@redhat.com" <bberg@redhat.com>,
 "ibm-acpi@hmh.eng.br" <ibm-acpi@hmh.eng.br>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 "ibm-acpi-devel@lists.sourceforge.net" <ibm-acpi-devel@lists.sourceforge.net>,
 Nitin Joshi <njoshi1@lenovo.com>, "bnocera@redhat.com" <bnocera@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

> 
> On 7/22/2020 2:46 PM, Limonciello, Mario wrote:
> <snip>
> >>
> >> +DYTC Thermal mode status and control
> >> +------------------------------------
> >> +
> >> +sysfs: dytc_perfmode
> >> +
> >> +Lenovo Thinkpad platforms with DYTC version 5 and newer have enhanced
> >> firmware to
> >> +provide improved performance control.
> >> +
> >> +The firmware can be controlled by hotkeys (FN+H, FN+M, FN+L) to switch the
> >> +operating mode between three different modes. This sysfs node provide a
> >> better
> >> +interface for user space to use
> >
> > So is userspace also notified in some way when you use the hotkey to change,
> or
> > is the event usurped by the EC?  Is this by the event
> TP_HKEY_EV_THM_CSM_COMPLETED?
> >
> I haven't added that yet - my aim with this patch was to get the sysfs
> API available. I'll look at adding the notification.

Yeah I just think touch the kernel/user ABI as atomically as possible
to avoid userspace to have to know 5.9 behaves this way and you need to poll for a value
and 5.10 you get a notification etc.

> 
> > You might consider to mention what other interfaces will conflict with this
> > and document them and/or artificially block them when this is loaded to
> prevent
> > such a conflict.
> I'm afraid I don't know what other interface will be conflicted with. Is
> there anything in particular I should be looking for? What did you have
> in mind?

Since it's not mentioned I can only guess your firmware implementation associated
with this code.  I would think for example that touching some PLx related MSR or
possibly RAPL interface might cause unexpected behaviors.

Assuming that's right kernel lockdown might prevent some of the MSR, but if you really
want user fully in control of this decision by one knob, you shouldn't let common
userspace tools like thermald, tuned, tlp or the like touch the related objects.

> 
> The firmware is operating by default and this patch is just providing
> user space with a way of determining the current mode and changing it by
> an alternate mechanism than hotkeys (I know some people dislike the
> hotkeys...)

In which case if the firmware preference is that it's user control, I think all
the more reason to block out those other things while offering this interface.

> 
> >
> <snip>
> >> +
> >> +The sysfs entry provides the ability to return the current status and to
> set
> >> the
> >> +desired mode. For example::
> >> +
> >> +        echo H > /sys/devices/platform/thinkpad_acpi/dytc_perfmode
> >> +        echo M > /sys/devices/platform/thinkpad_acpi/dytc_perfmode
> >> +        echo L > /sys/devices/platform/thinkpad_acpi/dytc_perfmode
> >
> > Doesn't this need ABI documentation submitted as part of the patch?
> OK - I'll need some help here as I'm not sure what I missed. Isn't that
> what this part of the patch is covering? If you can give me some
> pointers for what I should be putting where I'll do that.

I think it's common to document how your sysfs attributes work in a file in
Documentation/ABI/testing.  You can look at the format for some others
for examples.

> >
> <snip>
> 
> >> +
> >> +	if (perfmode == DYTC_MODE_BALANCE) {
> >> +		/* To get back to balance mode we just issue a reset command */
> >> +		err = dytc_command(DYTC_CMD_RESET, &output);
> >> +		if (err)
> >> +			return err;
> >> +	} else {
> >> +		/* Determine if we are in CQL mode. This alters the commands we do
> >> */
> >> +		err = dytc_perfmode_get(&cur_perfmode, &cur_funcmode);
> >> +		if (err)
> >> +			return err;
> >> +
> >> +		if (cur_funcmode == DYTC_FUNCTION_CQL) {
> >> +			/* To set the mode we need to disable CQL first*/
> >> +			err = dytc_command(0x000F1001 /*Disable CQL*/, &output);
> >
> > Why not put 0x000F1001 and 0x001F1001 as defines at the top?
> Fair point - I will fix that.
> 
> >
> <snip>
> 
> >> +
> >> +	switch (perfmode) {
> >> +	case DYTC_MODE_PERFORM:
> >> +		/* High performance is only available in deskmode */
> >> +		if (funcmode == DYTC_FUNCTION_CQL)
> >> +			return snprintf(buf, PAGE_SIZE, "Medium (Reduced as lapmode
> >> active)\n");
> >> +		else
> >> +			return snprintf(buf, PAGE_SIZE, "High\n");
> >> +	case DYTC_MODE_QUIET:
> >> +		return snprintf(buf, PAGE_SIZE, "Low\n");
> >> +	case DYTC_MODE_BALANCE:
> >> +		return snprintf(buf, PAGE_SIZE, "Medium\n");
> >> +	default:
> >> +		return snprintf(buf, PAGE_SIZE, "Unknown (%d)\n", perfmode);
> >> +	}
> >> +}
> >
> > I think it's pretty confusing that you write "H/M/L" into this file, but you
> > get back a full string.
> The main reason here for the string is the need to let the user know
> they are operating in medium mode even though high has been configured -
> because the device is on their lap.
> My thinking was you can parse the first letter to get H/M/L but more
> information is available for the subtleties.
> I considered another letter but couldn't determine something that was
> obvious to a user (Lower case 'h' is my best candidate?) and decided a
> string was nicer.
> 
> I'd appreciate input from others as to the best thing to provide here.

My own personal opinion (and there may be others that offer different view
so don't take it authoritative):

If you're offering High/Medium/Low, you should accept an input of High/Medium/Low.
If you offer H/M/L you should accept H/M/L.

A good way to indicate the reduced mode would be to add an asterisk for medium.
So it could be:
Write: H/M/L
Read: H/M*/M/L

The actual decoding of the information can be placed in that Documentation file
I mentioned above.  In general a userspace tool will be making this pretty and
translated I would guess, so no need to do High versus high or Foo (bar) when
it could be Foo*

> 
> >
> >> +
> >> +static ssize_t dytc_perfmode_store(struct device *dev,
> >> +				   struct device_attribute *attr,
> >> +				   const char *buf, size_t count)
> >> +{
> >> +	int err;
> >> +
> >> +	switch (buf[0]) {
> >> +	case 'l':
> >> +	case 'L':
> >> +		err = dytc_perfmode_set(DYTC_MODE_QUIET);
> >> +		break;
> >> +	case 'm':
> >> +	case 'M':
> >> +		err = dytc_perfmode_set(DYTC_MODE_BALANCE);
> >> +		break;
> >> +	case 'h':
> >> +	case 'H':
> >> +		err = dytc_perfmode_set(DYTC_MODE_PERFORM);
> >> +		break;
> >> +	default:
> >> +		err = -EINVAL;
> >> +		pr_err("Unknown operating mode. Ignoring\n");
> >
> > Shouldn't this be dev_err?
> Ack - I will correct
> 
> <snip>
> >>
> >> +	/* Check DYTC is enabled and supports mode setting */
> >> +	dytc_mode_available = false;
> >> +	if (output & BIT(DYTC_QUERY_ENABLE_BIT)) {
> >> +		/* Only DYTC v5.0 and later has this feature. */
> >> +		int dytc_version;
> >> +
> >> +		dytc_version = (output >> DYTC_QUERY_REV_BIT) & 0xF;
> >> +		if (dytc_version >= 5) {
> >> +			pr_info("DYTC thermal mode configuration available\n");
> >
> > I would argue this isn't useful to most people.
> > 1) You should decrease this to debug for use with dynamic debugging
> > 2) Output in the log what integer value you returned back in case of a need
> > to identify future firmware bugs.
> Agreed on both fronts. I will fix.

Similar to the pr_err vs dev_err, make sure you use the dev_dbg here instead of
pr_dbg.

> 
> >
> >> +			dytc_mode_available = true;
> >
> > I think you shouldn't set this flag until after the group is actually
> created.
> >
> Agreed. I will fix
> 
> Thanks for the feedback - very much appreciated.

Sure thing.

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
