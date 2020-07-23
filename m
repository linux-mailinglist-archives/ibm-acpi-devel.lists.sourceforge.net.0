Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id ACCFB22E3AF
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 Jul 2020 03:44:21 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jzsBT-0005cC-6n; Mon, 27 Jul 2020 01:44:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Mario.Limonciello@dell.com>) id 1jyQA4-0006Bf-OR
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 23 Jul 2020 01:36:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A+jRJE+hk7dB79fh8tfsU7d4iI3LFrrKrCQvLs2RHJg=; b=PLtJ1BZWDlwVZZpeaVCOzfhamw
 +/AECQy4MpPKqajD46uz6W8uQAz2NbO/yc0thrA3rNMMJqwvS5dNDXavHqAMOlj5PBawXZ9mmFp+O
 cViahpjhygDFjYbeVKf9k8MBCD7PJKP/2yOvnFOAOaO8R5Pi4+25Vyk8qeXPGoAlcGtk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A+jRJE+hk7dB79fh8tfsU7d4iI3LFrrKrCQvLs2RHJg=; b=RQqlSGbavI4y+3bavlCPI14u56
 Br6nt0mvU5WSvfxrqLaF3vr4YwdwHn63g/KpeCrjQNhcOI7eaWmQl0sJeQlAzrVQLbhsPozXApEwK
 GGJS0aQnV5W088RaFxH18nKTZ+7fhsR3u4VVafnIHJr/TGhtOiIKvLiR5MT1EpQXy42U=;
Received: from mx0b-00154904.pphosted.com ([148.163.137.20])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1jyQ9z-00EJcz-UL
 for ibm-acpi-devel@lists.sourceforge.net; Thu, 23 Jul 2020 01:36:40 +0000
Received: from pps.filterd (m0170396.ppops.net [127.0.0.1])
 by mx0b-00154904.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 06N1Sbws002234; Wed, 22 Jul 2020 21:36:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=dell.com;
 h=from : to : cc :
 subject : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=smtpout1;
 bh=A+jRJE+hk7dB79fh8tfsU7d4iI3LFrrKrCQvLs2RHJg=;
 b=gw5QFdG5Raxkvv0bl7pT+oaTgCaD5ZCH6e6bq9dVu1ONNk8p2uCp1NuiFKVE4lNcO9Su
 0VQ8M8a30ypoxJDOOQJBFFfw2i1xaAXgNVbcllBWso29hDIL2Dl0G2J12hldx7dLj3tX
 MPMjgpV2ALzxVjn+Bqb19RvRasRvmGcQvVHwQ9iytZSnrNFABJghlUx+aTLXJB5UsZVg
 +IfTx6hw0KhpUeu+JIB8cFKVDM/DtBK+bg3Q/iXKi65cyBakGvpU0qdPoGmcN5wiieuo
 t1GaTd9AWFCPLKI6rjIR9sr14xO991xsJ8cNL8iaKadrF9UOhxI5uyZRvugthuEWzLkq 1g== 
Received: from mx0a-00154901.pphosted.com (mx0a-00154901.pphosted.com
 [67.231.149.39])
 by mx0b-00154904.pphosted.com with ESMTP id 32bvwxy5a3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 22 Jul 2020 21:36:22 -0400
Received: from pps.filterd (m0090351.ppops.net [127.0.0.1])
 by mx0b-00154901.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 06N1ZcT9162971; Wed, 22 Jul 2020 21:36:21 -0400
Received: from nam12-bn8-obe.outbound.protection.outlook.com
 (mail-bn8nam12lp2177.outbound.protection.outlook.com [104.47.55.177])
 by mx0b-00154901.pphosted.com with ESMTP id 32ey0mh9hf-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 22 Jul 2020 21:36:21 -0400
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O1EyZZjAJKhhtcjJVYsMpyxgWvT+cMWP7agKnv5Fgy4IFJfdzTW03kBN89k0CCe/IoJjuuv8Eaz2glu81DAHch2S5k9f+6/3zvjjBGS7GAh9XjBIGjNQJOTLRvsiy8mi7Baxy0PlnUbOMEZneWOgUHfPKSMq4NM/p3xlRhcXPg6RXR05EMcUW85Z1hWLlE18t87arH3deo3vEKvnLP1pS/Tobsizjd3K5ZBEcLmX0plaNsdxAl4NYMtRGVdUFlGK4mZVloXZ6Qgq3sMHBvs5y0OzxghbmYd1feKYk4gthXyA2z8jk0LnD5C4VBVwRZ3+AYwgjr8cRqnKX80Pwd0VMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A+jRJE+hk7dB79fh8tfsU7d4iI3LFrrKrCQvLs2RHJg=;
 b=NcKQbq/ptKVJk2R30FnMo7BmZ1NssuOQE1k1EA5hnMHFrsSr2dUI6Dd5ynuqb4kEVm5oRNct8ZUgiOdCXfVtKB94h5YwbodfbTuSj0I36GLvoMWXsJX9O5kDzhoInegALzbEU6iMemDGp5V4P1iH1h+gZ1cLa1jp6cc37dtVJy2oyny2QBYp8X1NW4Ouh9SV1PSiRVmC+fVm8wymRZSpVsv7hI+u/cBBNf9X47PQY3m1bAWMdV4lDlUQmMUp6Jq9N1GzbcQTS7DvJygSOA7fTSvRnoors0Iz4uYNi/YZki9P50P433RoJSNX6TCuGLrPEh1g13sNl+qBH0mEIVRIgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=dell.com; dmarc=pass action=none header.from=dell.com;
 dkim=pass header.d=dell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Dell.onmicrosoft.com; 
 s=selector1-Dell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A+jRJE+hk7dB79fh8tfsU7d4iI3LFrrKrCQvLs2RHJg=;
 b=SFaMT9yO4VVyA6qIKoDgzDiteZGIyUCFJIijXCHW9lCHYslsQrEuXmDo7et5EjFwayCEFgjWjzmEkTxDWnBZ2uCsn/v58GsDzR8w42IbA/j9T1KSq2F/+PicdNZQouHd3Na/LG4uHvtehsoHg06OSSnOnGQjMhqrwL8iMlKOEmk=
Received: from DM6PR19MB2636.namprd19.prod.outlook.com (2603:10b6:5:15f::15)
 by DM5PR19MB1163.namprd19.prod.outlook.com (2603:10b6:3:bc::8) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3216.20; Thu, 23 Jul 2020 01:36:19 +0000
Received: from DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::f1c7:5bf4:a3b:ff40]) by DM6PR19MB2636.namprd19.prod.outlook.com
 ([fe80::f1c7:5bf4:a3b:ff40%6]) with mapi id 15.20.3195.022; Thu, 23 Jul 2020
 01:36:19 +0000
From: "Limonciello, Mario" <Mario.Limonciello@dell.com>
To: Mark Pearson <markpearson@lenovo.com>
Thread-Topic: [External] RE: [PATCH] platform/x86: thinkpad_acpi: performance
 mode interface
Thread-Index: AQHWYEtB2AZ16m+5BkiCkmlUDRcurKkT57IggAAUiICAAACUUIAAVMMAgAAO5CA=
Date: Thu, 23 Jul 2020 01:36:19 +0000
Message-ID: <DM6PR19MB2636F2A87EE2DF8BD2B9A879FA760@DM6PR19MB2636.namprd19.prod.outlook.com>
References: <markpearson@lenovo.com>
 <20200722171108.65185-1-markpearson@lenovo.com>
 <DM6PR19MB263650F7DC4B6680A5EFC5DAFA790@DM6PR19MB2636.namprd19.prod.outlook.com>
 <b79e0359-536d-f496-a01e-fe4c4b7796cc@lenovo.com>
 <DM6PR19MB26360DE8FCA56BC132644F98FA790@DM6PR19MB2636.namprd19.prod.outlook.com>
 <e14aa227-493b-4206-eaef-81874512166f@lenovo.com>
In-Reply-To: <e14aa227-493b-4206-eaef-81874512166f@lenovo.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Enabled=True;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SiteId=945c199a-83a2-4e80-9f8c-5a91be5752dd;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Owner=Mario_Limonciello@Dell.com;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_SetDate=2020-07-23T01:36:17.7518891Z;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Name=External Public;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Application=Microsoft Azure
 Information Protection;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_ActionId=994503a8-7c59-4edc-ad44-5b7c4d79484a;
 MSIP_Label_17cb76b2-10b8-4fe1-93d4-2202842406cd_Extended_MSFT_Method=Manual
authentication-results: lenovo.com; dkim=none (message not signed)
 header.d=none;lenovo.com; dmarc=none action=none header.from=Dell.com;
x-originating-ip: [76.251.167.31]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c444679e-f29a-4249-be73-08d82ea8ccdd
x-ms-traffictypediagnostic: DM5PR19MB1163:
x-microsoft-antispam-prvs: <DM5PR19MB1163F53D64DC2152ED4B6AABFA760@DM5PR19MB1163.namprd19.prod.outlook.com>
x-exotenant: 2khUwGVqB6N9v58KS13ncyUmMJd8q4
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cTNkV6AaFHrAuYhytRts+ZKqp/07KXLvwIypaa4OYIhruIPO5fSxLpdOd4svLVpS57Ro3d7QcomscoXYyrzXlU//OxSjUZU8wUKrYA152wlZ7BVCWX4YioP09gE0cTdC/xMVJL9Sqa1d4R+Vobdy9wj4xZeZEjD21m2AI8Mal+CGdHWs+Jw7vCmnKv4Bcw3NgeJevuKTaRnyJ9Im2CDgW6+6dVchOA8wYdYs8iFuu3dwGKqHODPrImjI0e+GLaJntjJd7YeDTalZ3OIqb8K3+JxRRgp8yUIoiWrZWR9IX/BNTV57s34q2XloqOb+4kYe3CVwaG+a1LxSkJxEiQFk0g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR19MB2636.namprd19.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(376002)(396003)(346002)(136003)(366004)(6916009)(71200400001)(86362001)(6506007)(9686003)(55016002)(66946007)(7696005)(186003)(52536014)(76116006)(8936002)(4326008)(26005)(83380400001)(8676002)(2906002)(786003)(33656002)(316002)(478600001)(5660300002)(66476007)(66556008)(64756008)(54906003)(66446008);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: GGkLtfxBdq8H0wVqmUKGrRMhZfe7pAzslmxMrUgz2vQa5wuTVKTVddd0I3LTh2PijdmPTa6WoEfncHZ0jqvc1ld7NlXO3igum+aGf+sGwiV8ZMRLjiGw/BFMSs+lr6+MHPLzjWL28hFTtAyzbdJONLDkz78WEcmXpZnERj1+L7/lCnAJy0NbNhQzIlutOh/hdWgDqH89gxDm6D0QQfDGXiAIeFqYDzhOWQOQNVbOipvPY2TUG8DSinjlUqNwDemDbXgcaa8MCXv5bApzal9mu5XA0WJyuH/aEZRmBR0uDE7+i47Tvsxm+yUJ4A7NNr+Ws334NV8pf1kZI7+WE/3+gN885b83GRdCmm2aRiUVZa88E4pMyTIjsbCCpALxT0Nrwl/qQln/N2WWaYhM7erZovbj0QknHNEP0LfrQjn16626DYD00O0ha1nTkfA/XeRNmy+IDsachZfpoXj9gUFnBI+uosK5KbwbIegyqBZbgERuBcwsaAz9+PuZMQY87edW
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Dell.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR19MB2636.namprd19.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c444679e-f29a-4249-be73-08d82ea8ccdd
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jul 2020 01:36:19.8503 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 945c199a-83a2-4e80-9f8c-5a91be5752dd
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vkFal0o3ke7nMa54qrzyCbM3NQ1VnizQq6Jhi9VOZs8j4XEXtL+U7dSSpBB+eVC7BJVaRovSDV90Lr+fA+n5IG2U/iK4gGMMao5rBIhhj68=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR19MB1163
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235, 18.0.687
 definitions=2020-07-22_17:2020-07-22,
 2020-07-22 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0
 adultscore=0 mlxlogscore=999 impostorscore=0 suspectscore=0 bulkscore=0
 priorityscore=1501 mlxscore=0 lowpriorityscore=0 spamscore=0 phishscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007230009
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 adultscore=0
 mlxscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 spamscore=0 mlxlogscore=999
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-2006250000
 definitions=main-2007230009
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [148.163.137.20 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
 -0.2 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jyQ9z-00EJcz-UL
X-Mailman-Approved-At: Mon, 27 Jul 2020 01:43:54 +0000
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

> >
> > Since it's not mentioned I can only guess your firmware implementation
> associated
> > with this code.  I would think for example that touching some PLx related
> MSR or
> > possibly RAPL interface might cause unexpected behaviors.
> >
> > Assuming that's right kernel lockdown might prevent some of the MSR, but
> if you really
> > want user fully in control of this decision by one knob, you shouldn't
> let common
> > userspace tools like thermald, tuned, tlp or the like touch the related
> objects.
> >
> Hmmm - I think I disagree here.
> 
> I don't think this should control what other userspace tools (like
> thermald) want to do with the CPU registers. Adding hooks into those
> other pieces of code also seems to me to be complicated and unnecessary
> in the kernel (and way beyond the scope of this patch). As an aside - my
> experience from testing is that thermald will override what the firmware
> is doing anyway.

I'm actually in agreement it is potentially quite complicated and shouldn't be in
this specific patch.  I was going to suggest it should either come as other
patches, or perhaps in documentation along the lines of "Users using this interface
should not use other tools to modify X, Y and Z".  No need to mention the actual
tools, but you should try to help prevent users shooting themselves in the foot
unintentionally.

> 
> I can see the value of adding a feature to *disable* the Lenovo firmware
> implementation as that doesn't currently exist. I will talk to the
> firmware team and see what can be done and take that on as a separate
> task. If there's a mechanism to do that already in a safe way then I'll
> add that to this.

This is actually even better to me.  Back to the H/M/L approach if you can have
an extra one for "off" then userspace tools that want to control the same levers
can turn this off when they are taking control.


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
