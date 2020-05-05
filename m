Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA4D1C639A
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  6 May 2020 00:03:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1jW5er-0003AG-9y; Tue, 05 May 2020 22:03:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <leoklein@gmx.net>) id 1jW5en-0003A1-VE
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 05 May 2020 22:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:To:From:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h/Nkhj7XXvZUqqjANdV3YLyCG/NxKRSKCLaqRZDf6Bg=; b=jZhZdkM+pQYlnHJNJYhR87yyAC
 CSe4IHVu5HMonSjK9jeLPmJRVlN9wcXjriWUyk6lsogF84DLg8SKTMZoCy+gUzSRf1od+gESsfe3W
 yuuq197GNKA103BY1t8h5eqrUQTcSYhxLm0zZWcpvhYwd/8jaVYXSCLq2F3ChmxtyuiM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:To:From:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=h/Nkhj7XXvZUqqjANdV3YLyCG/NxKRSKCLaqRZDf6Bg=; b=Q
 oP81GMfinaUrnJByWu8Z7cFqYAbV8rDiH68HIdMBk8IUGtCXletKmDZYD0qTmfulfI/V3Q6pdvcCQ
 0bxg9v81U4SgzweatxO6m+EZYYrDXrnlNgGWmdrS4pqFDvPwv+6eTG5IXsh5ctDLxGzWAeG1xCBt2
 sre3zRwhmsuJNcKY=;
Received: from mout.gmx.net ([212.227.17.21])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jW5ek-00Btjp-Ku
 for ibm-acpi-devel@lists.sourceforge.net; Tue, 05 May 2020 22:03:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1588716183;
 bh=WbIz5zNVpz9a86jKwXZyUqHZxw9YN719CVkUgLe+f3k=;
 h=X-UI-Sender-Class:From:To:Subject:Date;
 b=B4Za1CNQs4NABNZXkCMe42l3lul/ZjVRMELZ8yYFa4uOeH0+Ff61ovY4Nsia5YrP5
 9WU3angWZ6RQxhhGW/upyoJlYUHA8SZxirUiBBX/I5RD84JUPY35taN9V3Y+uJMDgj
 Z1L9BJWRYRkJPfHezaym9zrdDgCsWQ/KaI9fwxao=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.140] ([95.115.74.164]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1MAONX-1jPjsC2s9r-00BtRe for
 <ibm-acpi-devel@lists.sourceforge.net>; Wed, 06 May 2020 00:03:03 +0200
From: Leonhard Klein <leoklein@gmx.net>
To: ibm-acpi-devel@lists.sourceforge.net
Autocrypt: addr=leoklein@gmx.net; prefer-encrypt=mutual; keydata=
 mQGiBD6+ekIRBADTU+dbgsGnFt07G0FzFToNfPyRlgXpszuGRd9F4Ne+oIHjxPC65Di9PKvM
 RrHW9URMr4aPCO7Y+3f+s17jSr5cEABGEBCgbeSwelZtEmCK8FQB8SnQNXycMAIC2qwZRo8l
 XWWrbQgb1MNAJArhzbZgv3SEhqHSMkQabl3yjYIP5wCg+M7Ek9Uq+Rz1U6Qj7acBw8EuJbEE
 AJ7gipHMHZpM8oKeGgOa97UtsBgIS4PgAA2+n2X1VhLQrUiSPa8PCoPuL1KDfMrvilUV6Kto
 +t1UvxWI+93+OQB0rBrjBvX+rT35uBWi2eccMpckpK5IUIBHTMAuySGYvcgt/tBZWJkyf7qL
 vmUPaBVJsaSpa5nYLwrfKNUlwoArBAC/jy2b0kFi9+sL3sdBEKKjmIxOv5u9fUJkF1kGaVBv
 sm+Fg4DOM0xviabfvtEKMHrxEChlPJbMm9nRylIL0h/QiGjqRO65Dq8RU1g3g7OAxDbltjIs
 IHMUwp+SPF9yxpBqmMgweyvkJNoHeM8kliJ3TLfooqy1IV3dmXP83DVJrLQhTGVvbmhhcmQg
 S2xlaW4gPGxlb2tsZWluQGdteC5uZXQ+iFkEExECABkFAj6+ekIECwcDAgMVAgMDFgIBAh4B
 AheAAAoJEL046t7Fi6eaoysAoI/rJiZX8Hj545p+9uRaOwQh0g6/AKDiQuZkn51jteUCQoPd
 o8ejtf4pPbkBDQQ+vnpDEAQAnbKr3d8x5ZRD+1E7/rX5Aq0kQ94x6g8IZBwjavVuTlXCtFbq
 kEE3U9kqVb8j8U33b/JA49+q6fxzmfM27vqS+vq7se5eBbXX7i7yEEO9Xzp1o88PsDxt1IFO
 6NyAg7qqhSmlqWrUhNA9C9e/kIwqcXAYKuppkGtJwcjUDZ7eKB8AAwUD/0/T+cO72EeAiXEv
 xCeIedOvGFaa0pTTDyK1NvS+xkA+cSIePHngkiUgarjZJewuEvsuwgVq6hm+KZzd1a5nH9l5
 zQFt3xx+d6ujehxlSxNCpmW4L8NP2xUIW5RTEJ+U9abhSJFiaQVjSEofvstdJuRqKQh0nPeF
 LoAFwnrqfc15iEYEGBECAAYFAj6+ekMACgkQvTjq3sWLp5pHtQCeLGojwaXAsi4fQjvZMW3Q
 WWsQds0An275NDSVPAEAGZUAMYElG8xxioiq
Message-ID: <3316ca8d-2b49-4b79-aa76-e25041235cb9@gmx.net>
Date: Wed, 6 May 2020 00:03:03 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:QQl29N8uJ+NEr2nfBJv+if8ko0//YXAwC/xLxQUWLSlOL2EMY9S
 ZueSBRuUISBnnqXtfUajkORWhVtTGrtb6gS0g0y54FiIlmuRsgHjJ1sErYh5jAxqyFq+0bF
 MYYRTHFka+69qXd+ieobtYZe75Nrf0Yo2KR/Pr2a7Lujujrm/dhFzHNak979zPGVEH4ptTX
 3I92P9b1moW2IT1EqjJvA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yAB1MZMgxro=:g8L6u5L7bS76Cj7r6ZRA2l
 ySSFBT5wlNGDsWVrPRiV1H3Klr18PP/+QoWaceIBhgltEdRi6kkgbkn4TqToCQ5RMcLbQOBb4
 NfdPxnVHJtEs5eg2OBHt6PSOIj6CvLdVY8o/00BOC6uyb6upLeCMhSAkWVjZM8jA9Z2IDuigc
 4BVwzL//u3bpWSoUOHF0BPVEXHBeXDJHYbPSVrG0goWB1K6WZKpEkd3iTtwmlWiEbanpG1/n9
 vP+2M8lyYuJu4LVv8e2y3HgtbrCYXUJ51SpfTSTNr6mTm5D+DVxrIWIpAN6bwFhN81JvTDeZr
 nYAHwMfwqjs5L7gatF+iXw/FnfEj1ckK2qeSgge2B9BFuaniyP9kzCmqWYx382jItoYL/H6ab
 SKzM8kAtu/6DRt8bTjozP9vSckjBCA42OYvYA75qgSqOmWmyT0u6aY/a6pXdGpkCNTT2LfqpY
 xmCfBdFN7eL421DU+xoc3TUyUJjoGiFbtbD4IHlAuIGc+WIJYq3oSAASLcugFmaNq9Uh4vjTA
 n8WcbRnW/SdK5bZkfWvuAFIzCyP9wrYn/Rs4YnH+lR/2I1lJ6aOxrgCrUfyLnSejD262YovgC
 WRna4GXy7bI1VBwBxj0+StxijRbjfojiXOv1rv9pnjKKBk0C5KcDwjZWAdTQjpZ4Dj6NohjiL
 4kxcRkpZvogpXDfzS4l3zRTqIG2HibTF3Z8s/asERXe64XofdpCqLVouF9HIaKQqjvB9jZpbL
 HHIM2+4zJcRtvB+dMN9RvohBprVJgh11SCpWDO0/MnPprQ6ny0K55Pxr4Sh6aYVaNL2QEkyRG
 e+l3fwYT3Uht/ZwyuDr0iO/j+dkdxTl0DIGqZBe4t7nMeEIYwPTOMD2pe3R8f4cASFvRK/y5x
 WBmzBP1ffqrv+xQEeQnu1DsDNkAC+4gpM1GmZqC1vKjjCkiNvc1V7o3t/IxS3eafBHxmMA8SM
 89Q+p37n7TNl6UuG2QPVEXImEt1VkhfRUr5LMYoDbWHl5RpVG8vQUn8aHsQTF0opg78HqvKY/
 OGggr809X/rEISQeIf7FIWdoumTJdGJhk5q/sdthsBzdD6BjW6QkJWpW4NJlhEpinUBcQhQZT
 QRBqdITn3Q9QcJ7uCsJP8/v0m48e514kvzWJj6oYYHBjuhpYgdL4yYh5huXHxk1jRjnhz1ZyU
 I5PM25JEfpVWKZ5EByDRX5nDDcWFC0ebEOei04wK+8Ml9erzu4Oo2Tis2kHELCMTY9De4pZdf
 Nb50Su3iAN44nHj7D
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (leoklein[at]gmx.net)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.21 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1jW5ek-00Btjp-Ku
Subject: [ibm-acpi-devel] T60: Xubuntu 20.04 LTS reduces maximum fan speed
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hello Everybody,

I hope this is the right place for bugs - if it is one... I'm more a
Linux user than hacker.
I just upgraded my T60 from some old Ubuntu from ~2016 to the newest
release and found out that the fan is really quiet --- and the thing is
overheating under load (crashing).

When I read the rpm in auto mode the fan is around 3500 rpm even for
high thermal sensor values.

When I control it manually to 7 it hardly reaches 4000rpm.
In disengaged it slowly increases until the watchdog restores the value.

I remember that before the update the fan was more noisy and somewhere I
found that it should reach higher rpms.

Is this a bug in this kernel module, or do I need to search somewhere else?

Some terminal outputs:

leo@leo-ThinkPad-T60:/proc/acpi/ibm$ cat fan thermal
status:		enabled
speed:		3511
level:		auto
commands:	level <level> (<level> is 0-7, auto, disengaged, full-speed)
commands:	enable, disable
commands:	watchdog <timeout> (<timeout> is 0 (off), 1-120 (seconds))
temperatures:	72 48 44 -128 50 -128 35 -128 55 55 62 -128 -128 -128 -128
-128
leo@leo-ThinkPad-T60:/proc/acpi/ibm$ echo level 7 > fan
leo@leo-ThinkPad-T60:/proc/acpi/ibm$ cat fan thermal
status:		enabled
speed:		3936
level:		7
commands:	level <level> (<level> is 0-7, auto, disengaged, full-speed)
commands:	enable, disable
commands:	watchdog <timeout> (<timeout> is 0 (off), 1-120 (seconds))
temperatures:	67 48 43 -128 50 -128 35 -128 55 55 61 -128 -128 -128 -128
-128

Would be great if someone could check that.. Under these circumstances
my T60 is going to be toasted soon :(

Thanks & Best Regards
leo

--
http://leo.j-crew.de


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
