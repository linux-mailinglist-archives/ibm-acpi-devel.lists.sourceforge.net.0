Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BC06523AA55
	for <lists+ibm-acpi-devel@lfdr.de>; Mon,  3 Aug 2020 18:16:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1k2d8G-0008Jk-Uo; Mon, 03 Aug 2020 16:16:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <markpearson@lenovo.com>) id 1k2d8F-0008Jd-PJ
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 03 Aug 2020 16:16:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:CC:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jOK/Q4R1vsjQXJm6elIMO9ZzwMn7duunHU9seCaTj3s=; b=JhwRIFklhusrtKZzKP5Bu2qY+4
 5qkCvDJHJKVyaNR+iBnsfSkUrMpwTztQiLQrqwdgPDtP+zWQfo6mAoGYSQQ0aFGnD7l+UFyC9cPLw
 AQj/3TYCRZxfJUvXgRKXj+f/JIqNXj6jjPu9JdQouf7iR5SwSzW1LXBpRSnfb7zVpjJ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:CC:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jOK/Q4R1vsjQXJm6elIMO9ZzwMn7duunHU9seCaTj3s=; b=CG3sscOtbqR/sL/JT/Hc9+79xb
 prLeP4ikwTY+dJvoI9RTDb6kzNgT62w3sDwALdipW0XwFdg9f0TFBWpUEzLUW7csMGkAq0Iry8571
 CKO4iIMl1l17V9nWpPBY2lsDaocm7LpCagnlne/uZYprpu0Sk0UfUhIAA6yIcN8suiog=;
Received: from mail1.bemta23.messagelabs.com ([67.219.246.5])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1k2d8E-001c3a-6e
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 03 Aug 2020 16:16:11 +0000
Received: from [100.112.2.140] (using TLSv1.2 with cipher
 DHE-RSA-AES256-GCM-SHA384 (256 bits))
 by server-5.bemta.az-b.us-east-1.aws.symcld.net id 19/F3-31766-048382F5;
 Mon, 03 Aug 2020 16:16:00 +0000
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFmpnleJIrShJLcpLzFFi42JJl3vFrutgoRF
 vsLBZ1eLlhMOMFg/mplsc/zaT3WL2YRuLOc/WMlqs3vOC2YHNY+esu+wevw8weuxe8JnJ4/2+
 q2wenzfJBbBGsWbmJeVXJLBm3HyyjbHgPk/FxtV+DYyruLoYuTiEBP4zSnR+msEG4TxglFh2Z
 T+Qw8khLFAgceXZJqYuRg4OEQF1ic1dKSA1zAI/GCU+zjwK1dDPJLFr3QdmkAY2AW2JLVt+gT
 XzCthKtEx+wQRiswioSCx9d5QRxBYViJVYPvUPK0SNoMTJmU9YQGxOgUCJCytngcWZBSwkZs4
 /zwhhi0vcejKfCcKWl9j+dg7YLgkBBYmWvg2sEHaCxLKXd5gnMArOQjJ2FpJRs5CMmoVk1AJG
 llWMZklFmekZJbmJmTm6hgYGuoaGRrpAaGqsl1ilm6RXWqybmlhcomuol1herFdcmZuck6KXl
 1qyiREYPykFTH93MJ57/UHvEKMkB5OSKO9RDY14Ib6k/JTKjMTijPii0pzU4kOMMhwcShK8Ta
 ZAOcGi1PTUirTMHGAsw6QlOHiURHgTzIHSvMUFibnFmekQqVOMilLivKFmQAkBkERGaR5cGyx
 9XGKUlRLmZWRgYBDiKUgtys0sQZV/xSjOwagkzCsKMp4nM68EbvoroMVMQIttNqiCLC5JREhJ
 NTBZ6+4q7pI7eT94aVtwTHDKz5iTXz5vlPv3y7XkiHjyCyd1af61tX2XGScfnirrs+X57CfHb
 4p/8OtLcFq1N0860421VFaFyWt6pcWdTPUjp0rPBaistTRhTd9Xtz4t0b9XcVsAD/fLmYVBDo
 zWXVr2qw7U/5krpjs1fs1Phe25E886HH7N8ugNK+eThJW2P4OnBx2QWLDulMYGnrkHWvV/Tjh
 W5n5gxot0yQvT2CLmTL+8RTtaqunXk/B9XdMPNrQteNOrfeuzguB6/6TijUVuGT+/aPy/bKvo
 dzWBc9YXpvmt/HbOR969unws2LWd+XNn+OMJRYFsy5fpV22dOP/I0Y/X+l8/W3N4FsOFFs54J
 ZbijERDLeai4kQAaKBF7JoDAAA=
X-Env-Sender: markpearson@lenovo.com
X-Msg-Ref: server-11.tower-386.messagelabs.com!1596471358!584236!1
X-Originating-IP: [103.30.234.7]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.50.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 11260 invoked from network); 3 Aug 2020 16:16:00 -0000
Received: from unknown (HELO lenovo.com) (103.30.234.7)
 by server-11.tower-386.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 3 Aug 2020 16:16:00 -0000
Received: from reswpmail04.lenovo.com (unknown [10.62.32.23])
 (using TLSv1.2 with cipher AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by Forcepoint Email with ESMTPS id 92669A6FF62A25DCF2C8;
 Tue,  4 Aug 2020 00:15:56 +0800 (CST)
Received: from [10.38.102.51] (10.38.102.51) by reswpmail04.lenovo.com
 (10.62.32.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.1.1913.5; Mon, 3 Aug 2020
 09:15:53 -0700
To: Elvis Stansvik <elvstone@gmail.com>
References: <CAHms=eZm3LY-Z4p+TkfZ+vyxGd_7XKPBsSEM_Mvnx2s-GO2c9w@mail.gmail.com>
 <CAHms=eYpcy__Km_9O4MUtLxpasH1sAgQEmcapOhV79j01twhow@mail.gmail.com>
 <0e462361-a3bc-a7b8-bacd-85f32b575bac@lenovo.com>
 <CAHms=eZ4YVAvmUsjcZTsPOf15sxK_vELbK6fvCs=Bbm3gxFGeQ@mail.gmail.com>
From: Mark Pearson <markpearson@lenovo.com>
Message-ID: <4481e959-7e13-fb11-0628-9509380d38ee@lenovo.com>
Date: Mon, 3 Aug 2020 12:15:52 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAHms=eZ4YVAvmUsjcZTsPOf15sxK_vELbK6fvCs=Bbm3gxFGeQ@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.38.102.51]
X-ClientProxiedBy: reswpmail04.lenovo.com (10.62.32.23) To
 reswpmail04.lenovo.com (10.62.32.23)
X-Spam-Score: -1.5 (-)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [67.219.246.5 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [67.219.246.5 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.5 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1k2d8E-001c3a-6e
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH v5] platform/x86:
 thinkpad_acpi: lap or desk mode interface
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
Cc: Sugumaran <slacshiminar@lenovo.com>, ibm-acpi@hmh.eng.br,
 platform-driver-x86@vger.kernel.org, ibm-acpi-devel@lists.sourceforge.net,
 andy.shevchenko@gmail.com, Nitin Joshi <njoshi1@lenovo.com>, Bastien
 Nocera <bnocera@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net



On 8/3/2020 10:46 AM, Elvis Stansvik wrote:

> 
> Thanks Mark. I know the X1C6 firmware did not get the new thermal
> mode implementation, but thought that I would still be able to query
> its lap mode.
> 
> The reason I wanted query the lap mode is actually because I'm
> trying to help Matthew Garrett out in adding support for the adaptive
> DPTF performance policy on the thermald side, instead of on the
> firmware side like Lenovo decided to do for more recent models. See
> that effort here https://github.com/mjg59/thermal_daemon/issues/7).
> We were surprised to find that all of the OEM conditions in the APCT
> table remained unchanged when the laptop was taken between lap and
> desk. So I started suspecting that perhaps the X1C6 and its firmware
> simply does not have the ability to detect lap vs desk. That's why I
> wanted to use this patch to query the lap mode, as a debugging aid.
> 
> If X1C6 does not have the ability to detect lap mode, then that
> would obviously explain why the firmware does not change any APCT
> condition when put on/off lap, and any effort to get adaptive
> performance policy working on the thermald side is probably doomed
> :(
> 
Just as a follow-up for this mailing list - I responded to the X1C6 
issues on the thermal_daemon thread mentioned above - I will track those 
there.

Anything related to the thinkpad_acpi driver and improvements needed to 
my previous patch will come here. I have a question in to the firmware 
team to understand the limitations of when the lapmode variable should 
be made available or not. Looks like I have some work to do there....

Thanks!
Mark


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
