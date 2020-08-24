Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AE0BB24FBEF
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 24 Aug 2020 12:50:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1kAA3C-0000c2-Py; Mon, 24 Aug 2020 10:50:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <remy44@gmail.com>) id 1kAA39-0000b5-Pj
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 24 Aug 2020 10:50:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2Ttq3F3B+AxQH8zzFVuAs1A4bxHsTJil0hGnbC3gnPM=; b=fYQDnY2QsboqzMBLPRaOABYC67
 jt8t45wDqpNTkxnQz18CahTIdltxK09Wf8rbdghx/Tewmx8bCRU5v8H+e9bv+YpYHY0y8XXlLsBz/
 v7hdbcchSnRYzKEkvKxkJPcvQ/9id4sTwrDsQ9Jk1F1FA5CBsPgi5SyWSB/CZKi0jgrA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=2Ttq3F3B+AxQH8zzFVuAs1A4bxHsTJil0hGnbC3gnPM=; b=j
 azL5KPzVvjtzzjmsrOgNg11Pw2onqLx9hyXY5RDq/qxqYab0huJ5OCmTAnBVkUZjD1YABw+dmj8F1
 w8rOWDlE8XVyF7fEzcUOZkAo3B3eZul3yzUawKNvNVnrwQ5UK0P8s1C0Bnq8b0YXfm4i4MqWMht2P
 CKi1bpkM4mmEfh7c=;
Received: from mail-lf1-f44.google.com ([209.85.167.44])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kAA38-002PNy-HW
 for ibm-acpi-devel@lists.sourceforge.net; Mon, 24 Aug 2020 10:50:03 +0000
Received: by mail-lf1-f44.google.com with SMTP id 145so1345563lfi.8
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 24 Aug 2020 03:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=2Ttq3F3B+AxQH8zzFVuAs1A4bxHsTJil0hGnbC3gnPM=;
 b=lkEc/YPOKjQm2S8pBwU9QYgKU2lCepsyFXZEcJWFKnPySmaXTyr14bT59C1KYKzDHL
 hrzITL95AVF/EgSL7r2eA+v3O71vpJHyD1ZFT0ZRESpKz249ayBtmW2TOW5bwq+HLf1A
 tl/7/Q0zY3bkewf/6sNg72Npf+3c20w+BwkADTQFja+sxcRoCMRDnJUwVmFwCbZWl8km
 4TXiELORZigFqgqaq0v862TT5KXisV+5lcxav6IXXYdhgr7wYS8GZTc3DyDd2WwIx0zM
 2wibloOnFwzOwpktyeQ6bIUUD6BBd2rR3AytuqVW7iWJ8PLOFZZN00HzpAkyIx9InIBy
 ccUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=2Ttq3F3B+AxQH8zzFVuAs1A4bxHsTJil0hGnbC3gnPM=;
 b=KweCi2GfzRTjSXLCarmv1j6zrnjipil87afyr2eZDAIkxylknWTr3W00Q4uZKytBUN
 o6MxOQHHkKgYNC9lBUS3yTKr/p0WcxiyIBwoB3w5O/khu86U+ZWdijch/1oOUZIUxLCz
 ntdxLMUUuD+1wkf4X4QUmtDGMGH+sTQxsTwAnZrjdED6FFYgKQwOSw8Oc7gi14JkZee0
 3kORcosH65k6dNn45xGNC1A4iRdqLfON4aT5nEpQ1fCLUDv3fua2XeMFjnrCbuR0YCLI
 ybJFRSPvH8Aug1MIHf4+xQKpxszPbTmb5rQnKrk7nUNC4roNb8FL/veVPEx+46f8dL3j
 pHKg==
X-Gm-Message-State: AOAM5329Jc255Li/oVmOqYNFFbFhTPjnGWLd/Gkm0SLLANfT2CauMdK1
 hkBceefpJpinwlZkZjWQvZNNQmSsL6ZbfWVFDrFCr4dOGFlo
X-Google-Smtp-Source: ABdhPJzp/LNGjKQUrBh1E/khPoVQwJJkt9ltLaZclgbR0ma/SHiiKtipvFo93NAujiwiuqBGxi/Dw6j13tAtJF0MaKc=
X-Received: by 2002:ac2:44d4:: with SMTP id d20mr2328739lfm.137.1598266187907; 
 Mon, 24 Aug 2020 03:49:47 -0700 (PDT)
MIME-Version: 1.0
From: =?UTF-8?B?UGF3ZcWCIFByenliecWCZWs=?= <remy44@gmail.com>
Date: Mon, 24 Aug 2020 12:49:36 +0200
Message-ID: <CAJr0LcjTHQ+6m=30wJyvjfM32tC5p4NUq6_-8zyZBz3ToC_LkA@mail.gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
X-Spam-Score: 1.1 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (remy44[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (remy44[at]gmail.com)
 1.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.44 listed in list.dnswl.org]
X-Headers-End: 1kAA38-002PNy-HW
Subject: [ibm-acpi-devel] System freeze - unhandled HKEY event 0x6031
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
Content-Type: multipart/mixed; boundary="===============1975081786556148492=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============1975081786556148492==
Content-Type: multipart/alternative; boundary="00000000000063079705ad9d580b"

--00000000000063079705ad9d580b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

Reporting here as requested in /var/log/syslog

```
Aug 24 10:28:51 x1 kernel: [153517.254925] thinkpad_acpi: unhandled HKEY
event 0x6031
Aug 24 10:28:51 x1 kernel: [153517.254928] thinkpad_acpi: please report the
conditions when this event happened to ibm-acpi-devel@lists.sourceforge.net
```

Conditions:
* connected to external monitor via hdml port
* no usb/c thunderbolt devices plugged in
* x1 extreme rev 1
* no super heavy workload at the moment of freeze (zoom confcall with video
sharing)

--=20
pozdrawiam,
Pawe=C5=82

--00000000000063079705ad9d580b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,<br></div><div><br></div><div>Reporting here a=
s requested in /var/log/syslog</div><div><br></div>```<div>Aug 24 10:28:51 =
x1 kernel: [153517.254925] thinkpad_acpi: unhandled HKEY event 0x6031<br>Au=
g 24 10:28:51 x1 kernel: [153517.254928] thinkpad_acpi: please report the c=
onditions when this event happened to <a href=3D"mailto:ibm-acpi-devel@list=
s.sourceforge.net">ibm-acpi-devel@lists.sourceforge.net</a></div><div>```<b=
r clear=3D"all"><div><br></div><div>Conditions:</div><div>* connected to ex=
ternal monitor via hdml=C2=A0port</div><div>* no usb/c thunderbolt devices =
plugged in</div><div>* x1 extreme rev 1</div><div>* no super heavy workload=
 at the moment of freeze (zoom confcall with video sharing)</div><div><br><=
/div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gm=
ail_signature">pozdrawiam,<br>Pawe=C5=82</div></div></div>

--00000000000063079705ad9d580b--


--===============1975081786556148492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============1975081786556148492==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============1975081786556148492==--

