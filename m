Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 79E582B685
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 27 May 2019 15:36:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1hVFnj-0005Qq-Eg; Mon, 27 May 2019 13:36:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <christian.schaubschlaeger@gmx.at>)
 id 1hVFni-0005Qi-3Q
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 May 2019 13:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QWQXQ32RIuUJIKDoh/GqnPy08XAcal7WzEK6GqTGKzM=; b=CsIX12R+aiQNFJr0x1Ejw27cIH
 UV04Ap0wd2flTYjbAvQ9PlIBWAxtLJRshD7J7nX+P/U8kD2adodXQzyeIWvO7zRmg0GqDIRX5wX/5
 /c7FbXhfVyrQthSXnx5rG7DcMDTSF02ZqGx3IAXnOpwdjC/1tIK2Bbwau1uxTTVq6qtY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-ID:
 Subject:From:To:Sender:Reply-To:Cc:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QWQXQ32RIuUJIKDoh/GqnPy08XAcal7WzEK6GqTGKzM=; b=D
 MwCHxqd/lN3TMr2KaEZzShkd5S5nBaBJc0e7hJg5q5q5PTY9eiKe8zrkZ8o0JwAujU791volbY0lr
 FxTgsC7mu7G0RgOwQ/hn4Ug2HTzfZZwxOQkm0eGBX2UlfBoTImeumd66MSLNU98/tsqOFAPWtAmGu
 rT3pKOxHb1AqwtYY=;
Received: from mout.gmx.net ([212.227.17.22])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hVFnf-00FkdO-UA
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 27 May 2019 13:36:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1558964181;
 bh=QWQXQ32RIuUJIKDoh/GqnPy08XAcal7WzEK6GqTGKzM=;
 h=X-UI-Sender-Class:To:From:Subject:Date;
 b=KT6AJEAaCDExPhwv1vTMQvWPZ8ON3NhzKR5WI/FBH09hYTlYEIv+MUhrWFPwHttk7
 M1PQwaqzDvx3dm+R+LvbunETqzWLlxYK/59xQPEBFRVhtxHrX7XMvOiP36KTDNaN5K
 Z8hSzxO1yOywGtkIPtxDEMUJqlvB/lN1xG4MVaMk=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.0.70] ([81.189.232.75]) by mail.gmx.com (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1Mr9Bu-1gs2pn0fCg-00oIak for
 <ibm-acpi-devel@lists.sourceforge.net>; Mon, 27 May 2019 15:36:21 +0200
To: ibm-acpi-devel@lists.sourceforge.net
From: =?UTF-8?Q?Christian_Schaubschl=c3=a4ger?=
 <christian.schaubschlaeger@gmx.at>
Openpgp: preference=signencrypt
Autocrypt: addr=christian.schaubschlaeger@gmx.at; prefer-encrypt=mutual;
 keydata=
 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
 8xheZQNfqlRME+GEVXUDYQbqxDiv4w6U
Message-ID: <953f4195-bfb2-97b5-5c20-979553e8ab1b@gmx.at>
Date: Mon, 27 May 2019 15:36:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
Content-Language: en-US
X-Provags-ID: V03:K1:0dLS3kgIglQ1UKFToN5FcvCrcNmnQK/ZHsmuK5xLiM2q0+wicr1
 eiLePsjJF+InZDX1SH3/2ZBRAo0QmRUK2FlGRBV5zn4VLmWXWFrQcgx1WIDAqMs2tC54wMk
 2uNa/wkssl90362AGjw3SXR71jRYuirBpyl/B4q+0rI9+RadhnjJgjxBE1YcRxL4kwZW2LF
 M46USWSjBh/JRkUt2RTng==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:jj+MQ5E6e3k=:1e8Nhjfk35k+UIjMak41qI
 OlcDHbDgfE8WQpEL+MmNEiIfkVD5uqp00qlzytQTmTmOL5VscXVP0b4c9W8MEjDnnWS+hFRQo
 PuW44ZvrVtpVii9w2sR3aSuzMqKMg/YjuvMY03w9vv9isutRU1HsG7OjGffTqTUClxf7LAxR1
 NYsbyr2XNOV3GjarTiLQ0BmtkzSNSMYKV0qruEUkv6T6KuyBYc/Hoy3CYckJgfXSfVr6qvgLT
 mQTXjjavK/aDMqVdHtANnTW2i+tVaMJuMOfxBItetDTU4y81tRmIWDGHFNQNjfDiLaHoK4wCx
 CICEQSUr47d/Ho9kW7rlKxm9J9VzPRF/xU1EieD81n5o6ztCcgrwqW/7fGzsO5dkAaoQCMGI1
 poKYrY2Zo9DfYeVZCXV37IV+mZeEZpt8XoLVKRc6pjY7eM9yZMJdwnMAMz93ZOs4RD2nmK53P
 gU4+ml8HgTFmPHBF84gx9uC78pWQiMzwDYAtg/AnyGn4PonLs8ZH0Aj8mfjJXtJxmTej05r5y
 QbgD3p0RHRyPi6V41oz8OoRKUADjFaj1/BIGUt1rDdrN7PaSjz7cLAn+6AvqnUiRS+Sqs92s5
 Lr+JvPZ6hE1iqx9NN62qzE9Otn/42+hMYsIW3nk7w6EYhEp8QEYQPnCpLaaVr48OoHjD7bzL5
 mFb/oEmV/w99YeGo46OCJiXI9DbtUiRpB3VurrmV++c0b6M/7L6K7CUuo7AX8sqb6E2NCapul
 nnWdb+6DeEqM+jzXPYANDSuw+coVqe/jTVCBAQv6ntA3zM2dEC2qAqUrRGMFPfS2FPxsEGKPo
 +juixHBvbk7uZ8ojc6DpKB9J7t9n/UxuOFdbv6e4PqxQ67NRMirYyty9/enmY2rFDZdDss7d3
 bcTN30Kb/P68TvpG3A/8XDuFhQLLCUn1kQx5bFNWc8KgLHiA7xHACGrbp1gLdxIIZfmE4JBlo
 jV/F7r/r1DyQo9qB/k2VqSIy9zF8SiQHAQO/toykjxHl9EqhniXUOqkqsLI7LTQXKjmXj/zEc
 fg==
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (christian.schaubschlaeger[at]gmx.at)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hVFnf-00FkdO-UA
Subject: [ibm-acpi-devel] hotkey_tablet_mode
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
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

Hello list,

I'm running a recent linux kernel (v5.1.2) on a Lenovo X380 Yoga with the t=
hinkpad_acpi kernel module active:

bash-4.4# dmesg | grep think
[=A0=A0=A0 1.912994] thinkpad_acpi: ThinkPad ACPI Extras v0.26
[=A0=A0=A0 1.913000] thinkpad_acpi: http://ibm-acpi.sf.net/
[=A0=A0=A0 1.913003] thinkpad_acpi: ThinkPad BIOS R0SET39W (1.23 ), EC unkn=
own
[=A0=A0=A0 1.913006] thinkpad_acpi: Lenovo ThinkPad X380 Yoga, model 20LJS4=
3M00
[=A0=A0=A0 1.913506] thinkpad_acpi: radio switch found; radios are enabled
[=A0=A0=A0 1.913571] thinkpad_acpi: Tablet mode switch found (type: GMMS), =
currently in laptop mode
[=A0=A0=A0 1.913801] thinkpad_acpi: This ThinkPad has standard ACPI backlig=
ht brightness control, supported by the ACPI video driver
[=A0=A0=A0 1.913808] thinkpad_acpi: Disabling thinkpad-acpi brightness even=
ts by default...
[=A0=A0=A0 1.916093] thinkpad_acpi: rfkill switch tpacpi_bluetooth_sw: radi=
o is unblocked
[=A0=A0=A0 1.921443] thinkpad_acpi: Standard ACPI backlight interface avail=
able, not loading native one
[=A0=A0=A0 1.921451] thinkpad_acpi: volume: disabled as there is no ALSA su=
pport in this kernel
[=A0=A0=A0 1.926063] thinkpad_acpi: battery 1 registered (start 128, stop 1=
28)
[=A0=A0=A0 1.926126] input: ThinkPad Extra Buttons as /devices/platform/thi=
nkpad_acpi/input/input7
[=A0 130.702563] thinkpad_acpi: setting the hotkey mask to 0xffffffff is li=
kely not the best way to go about it
[=A0 130.702568] thinkpad_acpi: please consider using the driver defaults, =
and refer to up-to-date thinkpad-acpi documentation
[=A0 130.703930] thinkpad_acpi: asked for hotkey mask 0xffffffff, but firmw=
are forced it to 0xfffffffb

My problem is, that the state of the tablet mode switch - which can be dete=
rmined by reading /sys/bus/platform/drivers/thinkpad_acpi/thinkpad_acpi/hot=
key_tablet_mode - never changes, no matter how far I open or close the Yoga=
's lid.

Also, in a dual boot setup (Windows 10 / Linux), when I switch the Yoga to =
tablet mode in Windows, reboot it in this state to linux and then "fold" it=
 back to laptop mode, the "hotkey_tablet_mode" still tells me that the Yoga=
 is in tablet mode (which means that the keyboard does not work...); and I =
did not find any way to switch it back to laptop mode under linux. Only aft=
er booting Windows again and rebooting in laptop mode, hotkey_tablet_mode h=
olds the correct value.

I suppose that there's something wrong with my kernel config, but I have no=
 clue what...

Maybe someone can give me a hint?

Thanks and best regards,
Christian





_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel
