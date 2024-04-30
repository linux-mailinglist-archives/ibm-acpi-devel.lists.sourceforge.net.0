Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 29BF58B6C29
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 30 Apr 2024 09:51:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1s1iGS-0001Rq-JH;
	Tue, 30 Apr 2024 07:51:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mjt@tls.msk.ru>) id 1s1iGR-0001Rk-T4
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 30 Apr 2024 07:51:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:From
 :To:MIME-Version:Date:Message-ID:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1WpB/P0EotT2qMIS4ma4CWlt6Hg20mNkpUIMiQA5Lw8=; b=izOj1k19pf8Yd73P0TQ8I6PLSf
 SjrulRHqCsxjEajJA3fasWdhnPsDnP/wos7sZvOfuIVE3NXM5u/XqPOvbtg+FbFiRb9qB7jVb3nZl
 Jif/p96kaddAsJPEgPP8O1E8gGCMXRP1pQwnlNplYrz7CsldPyuBzesEJ1sIcgAZRPdc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:From:To:MIME-Version:Date:
 Message-ID:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1WpB/P0EotT2qMIS4ma4CWlt6Hg20mNkpUIMiQA5Lw8=; b=k
 jG2E83kDpPY9Mt+3RIa3ECvy+7rkojQ/W6KHJd52Xt+yH3P+W1azLRTsSoXkZ7TVU5idIZ9oJEnfd
 Dk0lcdpClPjuRq1nlJ7zHvd8SLC2q193Slr+DryMGRA1wkMSfjUvJAdQPFuqQ7WyTtGYMlMNW9YvQ
 6aPEUItMnh+c1wEE=;
Received: from isrv.corpit.ru ([86.62.121.231])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1iGP-00007C-At for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 30 Apr 2024 07:50:59 +0000
Received: from tsrv.corpit.ru (tsrv.tls.msk.ru [192.168.177.2])
 by isrv.corpit.ru (Postfix) with ESMTP id 8BC5963003
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 30 Apr 2024 10:34:41 +0300 (MSK)
Received: from [192.168.177.130] (mjt.wg.tls.msk.ru [192.168.177.130])
 by tsrv.corpit.ru (Postfix) with ESMTP id 91909C3A80
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 30 Apr 2024 10:34:36 +0300 (MSK)
Message-ID: <0532cbc2-be3b-4b4d-8291-b524e3ab058c@tls.msk.ru>
Date: Tue, 30 Apr 2024 10:34:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: ibm-acpi-devel@lists.sourceforge.net
Content-Language: en-US
From: Michael Tokarev <mjt@tls.msk.ru>
Autocrypt: addr=mjt@tls.msk.ru; keydata=
 xsBLBETIiwkBCADh3cFB56BQYPjtMZCfK6PSLR8lw8EB20rsrPeJtd91IoNZlnCjSoxd9Th1
 bLUR8YlpRJ2rjc6O1Bc04VghqUOHgS/tYt8vLjcGWixzdhSLJgPDK3QQZPAvBjMbCt1B6euC
 WuD87Pv5Udlpnzf4aMwxkgfTusx+ynae/o+T5r7tXD+isccbC3SiGhmAPxFyY3zGcFk4+Rxc
 0tP8YY2FWE/baHu+lBDTUN79efWAkHhex1XzVZsV7ZD16rzDbXFK5m6ApvGJWlr5YDEEydTF
 WwmvwBfr4OINVxzEG/ujNiG4fpMf2NsnFGyB9aSbFjXZevB4qWkduYYW+xpK1EryszHtAAYp
 zSBNaWNoYWVsIFRva2FyZXYgPG1qdEB0bHMubXNrLnJ1PsLAlgQTAQoAQAIbAwYLCQgHAwIE
 FQIIAwQWAgMBAh4BAheAAhkBFiEEbuGV0Yhuj/uBDUMkRXzgoIBEZcUFAmBbcjwFCS5e6jMA
 CgkQRXzgoIBEZcUTIQgA1hPsOF82pXxbcJXBMc4zB9OQu4AlnZvERoGyw7I2222QzaN3RFuj
 Fia//mapXzpIQNF08l/AA6cx+CKPeGnXwyZfF9fLa4RfifmdNKME8C00XlqnoJDZBGzq8yMy
 LAKDxl9OQWFcDwDxV+irg5U3fbtNVhvV0kLbS2TyQ0aU5w60ERS2NcyDWplOo7AOzZWChcA4
 UFf78oVdZdCW8YDtU0uQFhA9moNnrePy1HSFqduxnlFHEI+fDj/TiOm2ci48b8SBBJOIJFjl
 SBgH8+SfT9ZqkzhN9vh3YJ49831NwASVm0x1rDHcIwWD32VFZViZ3NjehogRNH9br0PSUYOC
 3s7ATQRX2BjLAQgAnak3m0imYOkv2tO/olULFa686tlwuvl5kL0NWCdGQeXv2uMxy36szcrh
 K1uYhpiQv4r2qNd8BJtYlnYIK16N8GBdkplaDIHcBMbU4t+6bQzEIJIaWoq1hzakmHHngE2a
 pNMnUf/01GFvCRPlv3imkujE/5ILbagjtdyJaHF0wGOSlTnNT4W8j+zPJ/XK0I5EVQwtbmoc
 GY62LKxxz2pID6sPZV4zQVY4JdUQaFvOz1emnBxakkt0cq3Qnnqso1tjiy7vyH9CAwPR/48W
 fpK6dew4Fk+STYtBeixOTfSUS8qRS/wfpUeNa5RnEdTtFQ9IcjpQ/nPrvJJsu9FqwlpjMwAR
 AQABwsBlBBgBCAAPBQJX2BjLAhsMBQkSzAMAAAoJEEV84KCARGXFUKcH/jqKETECkbyPktdP
 cWVqw2ZIsmGxMkIdnZTbPwhORseGXMHadQODayhU9GWfCDdSPkWDWzMamD+qStfl9MhlVT60
 HTbo6wu1W/ogUS70qQPTY9IfsvAj6f8TlSlK0eLMa3s2UxL2oe5FkNs2CnVeRlr4Yqvp/ZQV
 6LXtew4GPRrmplUT/Cre9QIUqR4pxYCQaMoOXQQw3Y0csBwoDYUQujn3slbDJRIweHoppBzT
 rM6ZG5ldWQN3n3d71pVuv80guylX8+TSB8Mvkqwb5I36/NAFKl0CbGbTuQli7SmNiTAKilXc
 Y5Uh9PIrmixt0JrmGVRzke6+11mTjVlio/J5dCM=
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Hi! This is my first thinkpad, and since I use linux almost
 exclusively, it is running linux too (debian bookworm). However, there are
 a few probs with it which I'd love to debug and find solution to. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [86.62.121.231 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: corpit.ru]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-Headers-End: 1s1iGP-00007C-At
Subject: [ibm-acpi-devel] thinkpad s495s: power button stops working after
 hibernation/resume: acpi_evalf(STRW, vd, ...) failed: AE_NOT_FOUND
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hi!

This is my first thinkpad, and since I use linux almost exclusively,
it is running linux too (debian bookworm).  However, there are a few
probs with it which I'd love to debug and find solution to.

One of the probs is the power button: it stops working after the first
suspend-resume cycle.

Initially it is registered as event5 "Power Button".  After fresh boot,
`input record` shows EV_KEY/KEY_POWER keypress events coming from it.
So far, so good.

Now, I perform hibernation: `echo disk > /sys/power/state` or
`systemctl hibernate` (I have to use `shutdown` method here instead of
`platform`, since the latter does not work, which is another issue
I'm trying to fix).  There's no GUI or anything fancy running, -
just plain old command line on a linux tty.

And after resume, this button does not produce any events in linux
anymore, after a note in dmesg:

[   24.788054] thinkpad_acpi: acpi_evalf(STRW, vd, ...) failed: AE_NOT_FOUND
[   24.788058] thinkpad_acpi: Cannot set adaptive keyboard mode.

Here's the full `dmesg | grep thinkpad` output:

[    3.294025] thinkpad_acpi: ThinkPad ACPI Extras v0.26
[    3.295427] thinkpad_acpi: http://ibm-acpi.sf.net/
[    3.295431] thinkpad_acpi: ThinkPad BIOS R13ET55W(1.29 ), EC R13HT55W
[    3.295433] thinkpad_acpi: Lenovo ThinkPad T495s, model 20QKS0EQ0N
[    3.298362] thinkpad_acpi: radio switch found; radios are enabled
[    3.300653] thinkpad_acpi: This ThinkPad has standard ACPI backlight brightness control, supported by the ACPI video driver
[    3.303193] thinkpad_acpi: Disabling thinkpad-acpi brightness events by default...
[    3.318819] thinkpad_acpi: rfkill switch tpacpi_bluetooth_sw: radio is unblocked
[    3.364425] thinkpad_acpi: Standard ACPI backlight interface available, not loading native one
[    3.399354] thinkpad_acpi: secondary fan control detected & enabled
[    3.425884] thinkpad_acpi: battery 1 registered (start 95, stop 100, behaviours: 0x7)
[    3.433515] input: ThinkPad Extra Buttons as /devices/platform/thinkpad_acpi/input/input10
[   24.202923] thinkpad_acpi: acpi_evalf(GTRW, dd, ...) failed: AE_NOT_FOUND
[   24.202953] thinkpad_acpi: Cannot read adaptive keyboard mode.
[   24.788054] thinkpad_acpi: acpi_evalf(STRW, vd, ...) failed: AE_NOT_FOUND
[   24.788058] thinkpad_acpi: Cannot set adaptive keyboard mode.

What's the problem here, any hints how to debug it further?

The firmware seems to be the latest one for this model.
Regular suspend to ram works fine (so far).

Thanks,

/mjt

-- 
GPG Key transition (from rsa2048 to rsa4096) since 2024-04-24.
New key: rsa4096/61AD3D98ECDF2C8E  9D8B E14E 3F2A 9DD7 9199  28F1 61AD 3D98 ECDF 2C8E
Old key: rsa2048/457CE0A0804465C5  6EE1 95D1 886E 8FFB 810D  4324 457C E0A0 8044 65C5
Transition statement: http://www.corpit.ru/mjt/gpg-transition-2024.txt


_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
