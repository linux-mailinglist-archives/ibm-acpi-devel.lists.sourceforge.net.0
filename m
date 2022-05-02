Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C12C51761E
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  2 May 2022 19:46:16 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1nla7D-0000Ru-AY; Mon, 02 May 2022 17:45:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <markpearson@lenovo.com>) id 1nla79-0000Rn-5p
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 02 May 2022 17:45:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:CC:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0GKG9YhyYgnKod5OwcIXTzhTKzPlNhcucZJRJH4Jwps=; b=GjCzRkSO3wNpywW983kde7j71V
 vrORiiMhlSe6df8pNjAA1Jagp2+opYq3cTU51kZY3kniP0PUFESWcsGzU4gUuAaKcKg/9AzlQ3QrN
 l+HJWGSNeKH9sNFFNwnLfslKP21TC96sJlUxuEim2T9QXNzHxdAqILG4yl07e9b44Bxo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:CC:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=0GKG9YhyYgnKod5OwcIXTzhTKzPlNhcucZJRJH4Jwps=; b=daPqXaxnxOfGYvWfg33RdP6iBC
 odcVj0wP01oeTULvkgA0it1cBDMcPHfilD1P60kUaKCPAbDdJWECN316abwHPKSOoxYECamEOoWNP
 SKr5yY+6oUYrY0+vXo8BXa166+hf3UDqwoXO1tAG62KkqfmsvTGTAp0ieiYCSMj4Q+Iw=;
Received: from mail1.bemta33.messagelabs.com ([67.219.247.6])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nla74-00Glff-H7
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 02 May 2022 17:45:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lenovo.com;
 s=Selector; t=1651513524; i=@lenovo.com;
 bh=0GKG9YhyYgnKod5OwcIXTzhTKzPlNhcucZJRJH4Jwps=;
 h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
 In-Reply-To:Content-Type:Content-Transfer-Encoding;
 b=TiXRZ+ifW7aeZpZ2nEHRBY3CznRV5oBtYmEjQdclH3jV/RYXz/SVP5fRGqTi6NLf3
 OVK5BqvEUJ9I1BuulIJEroT2SMlD8pSrEOL3moIie/j+9OzsMgZHvA0fwFIzDlYXqz
 qXwng4ri5qk4JUjHsBF5OzvS1QOjwJYKH3t6mC2LVmnO2xOKrjiWSu9XskelXcqwUA
 k7nZdc9Ow8r6whpO0kw08GQH0DRrlDguDo1aq3wR6oZ/9xQuWRPWgYdazQ9B3zm9SA
 VmTXs4I0izs/j5GewpKBlttn3AB5OBUu8FRy9Xia1TlD1iwKFPc5c4DfLYCFqfHO78
 KWDwCdOsdqGJQ==
X-Brightmail-Tracker: H4sIAAAAAAAAA1VTf0wbZRjud9crx0LN0Q742gBmnTNTvEoRt25
 xiv9I0ZhI4pyiUa7r0V5tS+2VDYzGDoLYUQIb65BSdZDNAGNUOiobpZQVyGDIxijifqhRRyLr
 hhgXo6wxse11iP89z/s87/s+b/J9OCpaFUhxutpKW0yUQSbYxNc9aSLJs9CszvdFC5R3L7YhS
 k+0h6/sGH9G2XDHB5ThYbdA6fQ3Y8ox53FUeXpkGS3CVdExoPL22gUq/4l7iGp19FuB6p439x
 WsDGNM6srqckzX038eMbdIq0+O/yGwgdrMw2ATDohTKPyzP8A/DFJjpAuDI95yTrAjsKuxXRA
 nIqIdgf5pG8aRUQRG/3Fj8RZIXASwsbeYE+wA+n1/J1taEDhT70A5cgtA9/d3sHUy6vAnVgqJ
 PbCtYS4ljvnEI/DC706Mq6fD6falhCeD2Acbg8FEXUzo4RHHpCCOUSIL3lj6AonjzcR70NXdy
 o8vQAk/gEN93yW3XQZwzvU5GncJiDw4OHg/0Z1KqGB0bCiFm/QYrB+KJvHDsM7XkfCLiK3wfv
 MVlLt0C3Qf+gxwuBzWHZtMYglcvM5dAIkcODnr5nP4ZVh3+1asF49hEtoG1FzZAKeCTcnWXHi
 p6TLSAkjXhptdG25zbUjn2pDuBOD3gt1qC6PVWY0UYyAV+fmkQlFI7igklQo59T5JyatYkqZY
 K1kgpw6ycppl5WyNcb9BIzfRVi+IvTSNpaj0HFjpXpOHgARHZBnCfrFZLXpIXamp0VGs7h1Ll
 YFmQ2A7jhMLFyY6gJRvqjTRMih8Pe5Lt9BaurqCMcTe7gMrxNNkm4Vp6TFZyJopI8toOekSeA
 pf+DoQQPH50EIAFSUmSbOEkcyYlYhbdVWm9UEP/sE8yJGKhYDH44nSzLTFyFj/r0dAFg5kYuH
 erNiUNMZkXd8XiUVBYlFqtcZ4FCv1nyS1ISWL4TN/4UTnj/YJT/e2vI/1sxVdVPHpwRpUYrMM
 HjV3vJDCu7p1p3Fh5ZO+7F3DjhcH6CvOqV/FZbavJvK0P4NdixldqePYgas3tdu1a27esXMHv
 jkoGZJHUp9f1jynua1vPA6utb777JRS2rPis3+YsTyvmStYK9sRbCjue83wZbDk09q9IRuzOr
 sGtzHMb57iU/a3lpZdwZKTN4rObPnJ8+hdr2fPcOYInl1Tn995KHD2ievlHwkq9W9MHW3rnd8
 3x/sByY18kBcsldzMcbaG0RXHcLizT3y+wqYPF87sL72mWlWHwq+WPm2azp5uCrzdhO1smHnz
 SMrYL7sHXjI1y/isjlI8jlpY6l8MYL3kggQAAA==
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-2.tower-715.messagelabs.com!1651513522!14892!1
X-Originating-IP: [104.47.110.45]
X-SYMC-ESS-Client-Auth: mailfrom-relay-check=pass
X-StarScan-Received: 
X-StarScan-Version: 9.86.4; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 28556 invoked from network); 2 May 2022 17:45:23 -0000
Received: from mail-tyzapc01lp2045.outbound.protection.outlook.com (HELO
 APC01-TYZ-obe.outbound.protection.outlook.com) (104.47.110.45)
 by server-2.tower-715.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 2 May 2022 17:45:23 -0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EVP7xigZvJbV61q29QEWxGdgmKQ+dv0mQspm1Mwnns/Vf/0jXR/QHqGSSiXqCnk+zPeh69uQx9f88U0hcrD4fmU0Um6DCo4IBb67ZfazhSNTx8N+yqOlX8udLcfdhsc4JvJALNlPluMGByyPpcJNShdF/hqQoaBVR393vayhcD8VilnWFIlBK9zfLBZFR5dDOLPc21tksy4IazwXE5O1RvCYKQMPqF0GXZgb4g9y96DIQW+1bahfKtqMghWPwdOmsgLL8OOUcQlLbZa6LKNDbsEJ2SaDU4YKwnR8bahMS//FE0bTknIXhs/QWIRGBPbiRMenfBKzvSk8VQ+doOb53A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=0GKG9YhyYgnKod5OwcIXTzhTKzPlNhcucZJRJH4Jwps=;
 b=e3wpGydcKx8ZplE9vjyVzp4BCFANYjVkvjAfwlQpy8aa5wYU+eNwnrSLpvKFvV7dlbjmHxQeXJZnB0Kgwlh4PFXva4tgI2aqWVenzuU1b8TGLvp8YPA49L3Psz2g/wWdU5CE70lURt+PEF+qJ4GTrgoPXB8yqZV6V+HuaONzPc+pB0ybovG9YtPWmFcU1uwmMO5Zt0XJ5Q1hpGuwPs+OhEC71Bnlgz64AWaoG4EBh5NOXblEZT2GXEq4NAn0gUEF+MILDZylJkRp05TfVMVTuq76ErWCiXKt5izUPsC86yP5UQ+jSPtDsMtS2VobMsKaQME/UdoKCQ29If9tc9fq8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=softfail (sender ip
 is 104.232.225.6) smtp.rcpttodomain=redhat.com smtp.mailfrom=lenovo.com;
 dmarc=fail (p=none sp=none pct=100) action=none header.from=lenovo.com;
 dkim=none (message not signed); arc=none
Received: from SG2PR03CA0119.apcprd03.prod.outlook.com (2603:1096:4:91::23) by
 SG2PR03MB4976.apcprd03.prod.outlook.com (2603:1096:4:d8::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.24; Mon, 2 May 2022 17:45:21 +0000
Received: from SG2APC01FT0047.eop-APC01.prod.protection.outlook.com
 (2603:1096:4:91:cafe::9) by SG2PR03CA0119.outlook.office365.com
 (2603:1096:4:91::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5227.14 via Frontend
 Transport; Mon, 2 May 2022 17:45:21 +0000
X-MS-Exchange-Authentication-Results: spf=softfail (sender IP is
 104.232.225.6) smtp.mailfrom=lenovo.com; dkim=none (message not signed)
 header.d=none;dmarc=fail action=none header.from=lenovo.com;
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
 lenovo.com discourages use of 104.232.225.6 as permitted sender)
Received: from mail.lenovo.com (104.232.225.6) by
 SG2APC01FT0047.mail.protection.outlook.com (10.13.36.133) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5206.12 via Frontend Transport; Mon, 2 May 2022 17:45:20 +0000
Received: from reswpmail01.lenovo.com (10.62.32.20) by mail.lenovo.com
 (10.62.123.116) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.27; Mon, 2 May
 2022 13:44:57 -0400
Received: from [10.46.213.103] (10.46.213.103) by reswpmail01.lenovo.com
 (10.62.32.20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.2308.27; Mon, 2 May
 2022 13:46:03 -0400
Message-ID: <d7a35afb-6b3a-7d76-0dc1-975842407fea@lenovo.com>
Date: Mon, 2 May 2022 13:44:55 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Lyude Paul <lyude@redhat.com>, <ibm-acpi-devel@lists.sourceforge.net>,
 <platform-driver-x86@vger.kernel.org>
References: <20220429211418.4546-1-lyude@redhat.com>
 <20220429211418.4546-2-lyude@redhat.com>
 <d3461670-a905-4956-4f4d-d847adf4289b@lenovo.com>
 <2769588a352e9c3b43a4e09afff100d52a9ba524.camel@redhat.com>
From: Mark Pearson <markpearson@lenovo.com>
In-Reply-To: <2769588a352e9c3b43a4e09afff100d52a9ba524.camel@redhat.com>
X-Originating-IP: [10.46.213.103]
X-ClientProxiedBy: reswpmail01.lenovo.com (10.62.32.20) To
 reswpmail01.lenovo.com (10.62.32.20)
X-EOPAttributedMessage: 0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 412bcce7-8a46-46c9-7a3a-08da2c638765
X-MS-TrafficTypeDiagnostic: SG2PR03MB4976:EE_
X-Microsoft-Antispam-PRVS: <SG2PR03MB4976CE2245F6672BE5403192C5C19@SG2PR03MB4976.apcprd03.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E7Qx4DpJO6igBDROe1t4p9XaSG6tTerAaaS9g/obwJMCrIpyJ6yAjEOm+xXSsxZuek2kzioAF++2wnNFXf+NwENrK+pEp5s/xSE+3M/8ySBjGSl3yLWFTY/kjc0BsriIJWwlRS7MzcCQLtupQsa+dCXqS9uqWkZsDt32l/+AJjkFdi3DfmGNT3opMv1/fKIGwHbRDWAEAwZdSVjNoNfsbE3h6xurg3G5wEdhANGTE1rgxUmg1ZVp6TqVGxOxr6QsgpCTi/+kiJpFQlN4qiiv9b+kP4nZhnQiN9fYsZdd4EbCB1c3Vs9BwJzt0E9T9EkdMv46gqqkMx5C4CjiVpMsMYcrAozn1ozWrinBwOM/bG2TEEBs573oYf1EiF6kJyYbmcnASbPRX5EaUx6Xhe6fe6IInpD8G8o6+B+iLgvvfhDDEb3hE4gf3aA4MoyQKaz7eCVOzCVjkbTbarjrB4I9NoZv6RQ24p2Rds/+CPNzvREjJiE/aVsh1mJh6PKuvvxrH0+PB8x5WzMvIdCG6bPrM1qv9aNWZ9Bqj+htsbj8SG5fZnHnytFxb9PuI020iQpDEWKeKRKvSg3LenFg2cOqEATjIb3SDw4n/go40Dix9WXvtwfWZdmBB01hPAbl7bWp/JqIoetiUcBs7Jti6JM2XFY37AVhyliuwW1O4evsWWni3jiEZlMoQz68dk5Qb/6mgNBphYaUPhELYNAyrOzva+yzECuGh6Sy+8B5aF57DYDxNX5jBXqJY2LE/CFhCJKPrT+/OIv98YrJF0FNC4xodkSD+4YUAyh43acYmV1wIxoS9WtxdM2PSUVVEVKrUJRh
X-Forefront-Antispam-Report: CIP:104.232.225.6; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:mail.lenovo.com; PTR:InfoDomainNonexistent; CAT:NONE;
 SFS:(13230001)(4636009)(40470700004)(36840700001)(46966006)(81166007)(8936002)(82960400001)(508600001)(16576012)(54906003)(316002)(36906005)(31686004)(2906002)(83380400001)(356005)(36756003)(110136005)(6666004)(2616005)(70586007)(70206006)(47076005)(82310400005)(36860700001)(4326008)(8676002)(426003)(336012)(26005)(16526019)(186003)(5660300002)(86362001)(40460700003)(31696002)(53546011)(3940600001)(36900700001)(43740500002);
 DIR:OUT; SFP:1102; 
X-OriginatorOrg: lenovo.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2022 17:45:20.6149 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 412bcce7-8a46-46c9-7a3a-08da2c638765
X-MS-Exchange-CrossTenant-Id: 5c7d0b28-bdf8-410c-aa93-4df372b16203
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=5c7d0b28-bdf8-410c-aa93-4df372b16203; Ip=[104.232.225.6];
 Helo=[mail.lenovo.com]
X-MS-Exchange-CrossTenant-AuthSource: SG2APC01FT0047.eop-APC01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SG2PR03MB4976
X-Spam-Score: -2.9 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 5/2/22 13:42, Lyude Paul wrote: > Some answers/comments
 down below > > On Fri, 2022-04-29 at 21:25 -0400, Mark Pearson wrote: >>
 Hi Lyude >> >> On 4/29/22 17:14, Lyude Paul wrote: >>> The new metho [...]
 Content analysis details:   (-2.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.247.6 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [67.219.247.6 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1nla74-00Glff-H7
Subject: Re: [ibm-acpi-devel] [External] [PATCH 1/2] platform/x86:
 thinkpad_acpi: Restore X1 Carbon 9th Gen dual fan quirk
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
Cc: linux-hwmon@vger.kernel.org, Hans de
 Goede <hdegoede@redhat.com>, linux-kernel@vger.kernel.org,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Mark Gross <markgross@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

CgpPbiA1LzIvMjIgMTM6NDIsIEx5dWRlIFBhdWwgd3JvdGU6Cj4gU29tZSBhbnN3ZXJzL2NvbW1l
bnRzIGRvd24gYmVsb3cKPiAKPiBPbiBGcmksIDIwMjItMDQtMjkgYXQgMjE6MjUgLTA0MDAsIE1h
cmsgUGVhcnNvbiB3cm90ZToKPj4gSGkgTHl1ZGUKPj4KPj4gT24gNC8yOS8yMiAxNzoxNCwgTHl1
ZGUgUGF1bCB3cm90ZToKPj4+IFRoZSBuZXcgbWV0aG9kIG9mIHByb2JpbmcgZHVhbCBmYW4gc3Vw
cG9ydCBpbnRyb2R1Y2VkIGluOgo+Pj4KPj4+IGJmNzc5YWFmNTZlYSAoInBsYXRmb3JtL3g4Njog
dGhpbmtwYWRfYWNwaTogQWRkIGR1YWwgZmFuIHByb2JlIikKPj4+Cj4+PiBXaGlsZSB0aGlzIGNv
bW1pdCBzYXlzIHRoaXMgd29ya3Mgb24gdGhlIFgxIENhcmJvbiA5dGggR2VuLCBpdCBhY3R1YWxs
eQo+Pj4ganVzdCByZXN1bHRzIGluIGhpZGluZyB0aGUgc2Vjb25kIGZhbiBvbiBteSBsb2NhbCBt
YWNoaW5lLiBBZGRpdGlvbmFsbHksCj4+PiBJJ20gZmFpcmx5IHN1cmUgdGhpcyBtYWNoaW5lIHBv
d2VycyBvbiBxdWl0ZSBvZnRlbiB3aXRob3V0IGVpdGhlciBvZiB0aGUKPj4+IHR3byBmYW5zIHNw
aW5uaW5nLgo+Pj4KPj4+IFNvIGxldCdzIGZpeCB0aGlzIGJ5IGFkZGluZyBiYWNrIHRoZSBkdWFs
IGZhbiBxdWlyayBmb3IgdGhlIFgxIENhcmJvbiA5dGgKPj4+IEdlbi4KPj4+Cj4+PiBTaWduZWQt
b2ZmLWJ5OiBMeXVkZSBQYXVsIDxseXVkZUByZWRoYXQuY29tPgo+Pj4gRml4ZXM6IGJmNzc5YWFm
NTZlYSAoInBsYXRmb3JtL3g4NjogdGhpbmtwYWRfYWNwaTogQWRkIGR1YWwgZmFuIHByb2JlIikK
Pj4+IENjOiBNYXJrIFBlYXJzb24gPG1hcmtwZWFyc29uQGxlbm92by5jb20+Cj4+PiBDYzogSGFu
cyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0LmNvbT4KPj4+IENjOiBIZW5yaXF1ZSBkZSBNb3Jh
ZXMgSG9sc2NodWggPGhtaEBobWguZW5nLmJyPgo+Pj4gQ2M6IE1hcmsgR3Jvc3MgPG1hcmtncm9z
c0BrZXJuZWwub3JnPgo+Pj4gQ2M6IGlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dAo+Pj4gQ2M6IHBsYXRmb3JtLWRyaXZlci14ODZAdmdlci5rZXJuZWwub3JnCj4+PiAtLS0KPj4+
IMKgZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jIHwgMSArCj4+PiDCoDEgZmls
ZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pj4KPj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3Bs
YXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMKPj4+IGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhp
bmtwYWRfYWNwaS5jCj4+PiBpbmRleCBjNTY4ZmFlNTZkYjIuLjkwNjdmZDBhOTQ1YyAxMDA2NDQK
Pj4+IC0tLSBhL2RyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+Pj4gKysrIGIv
ZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4+PiBAQCAtODY5OSw2ICs4Njk5
LDcgQEAgc3RhdGljIGNvbnN0IHN0cnVjdCB0cGFjcGlfcXVpcmsgZmFuX3F1aXJrX3RhYmxlW10K
Pj4+IF9faW5pdGNvbnN0ID0gewo+Pj4gwqDCoMKgwqDCoMKgwqDCoFRQQUNQSV9RX0xOVjMoJ04n
LCAnMicsICdFJywgVFBBQ1BJX0ZBTl8yQ1RMKSzCoMKgLyogUDEgLyBYMSBFeHRyZW1lCj4+PiAo
MXN0IGdlbikgKi8KPj4+IMKgwqDCoMKgwqDCoMKgwqBUUEFDUElfUV9MTlYzKCdOJywgJzInLCAn
TycsIFRQQUNQSV9GQU5fMkNUTCkswqDCoC8qIFAxIC8gWDEgRXh0cmVtZQo+Pj4gKDJuZCBnZW4p
ICovCj4+PiDCoMKgwqDCoMKgwqDCoMKgVFBBQ1BJX1FfTE5WMygnTicsICczJywgJzAnLCBUUEFD
UElfRkFOXzJDVEwpLMKgwqAvKiBQMTUgKDFzdCBnZW4pIC8KPj4+IFAxNXYgKDFzdCBnZW4pICov
Cj4+PiArwqDCoMKgwqDCoMKgwqBUUEFDUElfUV9MTlYzKCdOJywgJzMnLCAnMicsIFRQQUNQSV9G
QU5fMkNUTCkswqAgLyogWDEgQ2FyYm9uICg5dGgKPj4+IGdlbikgKi8KPj4+IMKgwqDCoMKgwqDC
oMKgwqBUUEFDUElfUV9MTlYzKCdOJywgJzMnLCAnNycsIFRQQUNQSV9GQU5fMkNUTCkswqAgLyog
VDE1ZyAoMm5kIGdlbikKPj4+ICovCj4+PiDCoMKgwqDCoMKgwqDCoMKgVFBBQ1BJX1FfTE5WMygn
TicsICcxJywgJ08nLCBUUEFDUElfRkFOX05PRkFOKSzCoC8qIFgxIFRhYmxldCAoMm5kCj4+PiBn
ZW4pICovCj4+PiDCoH07Cj4+IEkganVzdCBkb3VibGUgY2hlY2tlZCB0aGlzIG9uIG15IFgxQzkg
LSBhbmQgaXQncyB3b3JraW5nIGNvcnJlY3RseS4gMm5kCj4+IGZhbiBpcyBkZXRlY3RlZCBjb3Jy
ZWN0bHkuCj4+Cj4+IEknZCByYXRoZXIgdW5kZXJzdGFuZCB3aHkgaXQncyBub3Qgd29ya2luZyBv
biB5b3VyIHNldHVwIHRoZW4ganVzdAo+PiByZS1pbnRyb2R1Y2UgdGhlIHF1aXJrLgo+IAo+IE9m
IGNvdXJzZSEgSSBmaWd1cmVkIGFzIG11Y2gsIGl0J3MganVzdCBlYXN5IHRvIHN0YXJ0IGNvbnZl
cnNhdGlvbnMgd2l0aCBhCj4gcmV2ZXJ0IDpQCj4gCj4+Cj4+IFdoYXQgaGFwcGVucyBvbiB5b3Vy
IHN5c3RlbSB3aGVuIHRoZQo+PiDCoCByZXMgPSBmYW4yX2dldF9zcGVlZCgmc3BlZWQpOwo+PiBp
cyBjYWxsZWQ/IElmIHRoYXQgaXMgZmFpbGluZyBpdCBtZWFucyB5b3VyIDJuZCBmYW4gaXNuJ3Qg
cmVzcG9uZGluZyBhbmQKPj4gdGhhdCdzIG5vdCBzdXBwb3NlZCB0byBoYXBwZW4uIENvdWxkIHlv
dSBsZXQgbWUga25vdyBpZiB5b3UgZ2V0IGFuIGVycm9yCj4+IGNvZGUsIGlmIGl0IGhhcHBlbnMg
ZXZlcnkgYm9vdCwgZXRjCj4+IEkgYXNzdW1lIHdoZW4gdGhlIGZ1bmN0aW9uIGlzIGNhbGxlZCBs
YXRlciBpdCB3b3JrcyBzdWNjZXNzZnVsbHk/Cj4gCj4gSXQgZGVmaW5pdGVseSBzZWVtcyB0byBo
YXBwZW4gZXZlcnkgYm9vdCwgbm90IHN1cmUgYWJvdXQgdGhlIGVycm9yIGNvZGUgaXQKPiByZXR1
cm5zLiBJIHdpbGwgY2hlY2sgYW5kIGdldCB5b3UgdGhpcyBpbmZvIGFzYXAKPiAKPj4KPj4gQWxz
byBwbGVhc2UgY29uZmlybSB3aGljaCBCSU9TIGFuZCBFQyB2ZXJzaW9uIHlvdSBoYXZlLgo+IAo+
IEJJT1MgdmVyc2lvbiBOMzJFVDc1VyAoMS41MSkgcmVsZWFzZSBkYXRlIDEyLzAyLzIwMjEsIGVt
YmVkZGVkIGNvbnRyb2xsZXIgaXMKPiAwLjEuMzIKPiAKPiAKVGhhbmtzIQoKQWxvbmcgd2l0aCBU
aG9tYXMnIG5vdGVzIEkgdGhpbmsgSSd2ZSBmb3VuZCB0aGUgcHJvYmxlbSAodGhvdWdoIHN0aWxs
CmJlbXVzZWQgd2h5IEkgZG9uJ3Qgc2VlIHRoZSBwcm9ibGVtIG9uIG15IFgxQzkgYW5kIEkgdGVz
dGVkIG9uIG11bHRpcGxlCnBsYXRmb3JtcyBwcmV2aW91c2x5Li4uc28gaXQgaXMgc29tZXdoYXQg
d2VpcmQpLgoKV29ya2luZyBvbiBhIGZpeCAtIHdpbGwgdHJ5IGFuZCBoYXZlIHRoYXQgb3V0IGZv
ciByZXZpZXcgbGF0ZXIgdG9kYXkgb3IKdG9tb3Jyb3cuCgpNYXJrCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFjcGktZGV2ZWwgbWFpbGluZyBs
aXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNv
dXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1kZXZlbAo=
