Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A6183FD18C
	for <lists+ibm-acpi-devel@lfdr.de>; Wed,  1 Sep 2021 04:55:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1mLGOO-0005jm-9I; Wed, 01 Sep 2021 02:54:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <conjamesnor@gmail.com>) id 1mLGOM-0005jY-GB
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 01 Sep 2021 02:54:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:To:Subject:Message-ID:Date:From:
 MIME-Version:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AKKaXYuKfsTucnrApYEHcuI7gKXj0vmNtRED526o73w=; b=l4GFHMHP9Tb7HeBzPbAM7oCoyJ
 Zk5FI13acSEGn5H/z0AiMtgo4FkzSupvhnOeSmKlYjxRMxk8bF1Ks26g7c+xhBl/3r7EsshPOdgjR
 CcTuRGqLqyzsqO0ycmq6KWpfcfPHdekfWBTj5Nm4NupapVJ//BGtg0D/vIu1+sDiQMWc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:To:Subject:Message-ID:Date:From:MIME-Version:Sender:Reply-To
 :Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=AKKaXYuKfsTucnrApYEHcuI7gKXj0vmNtRED526o73w=; b=l
 VVZ0vf2zfEeFx8T3T8J3poecsXj/bh2Lw3YD9uCSzfUL0jamCcFRzfxEJfYaDQqdtCL0QdURaqH52
 2U2nz3VnkRsI7lL9mrK7cdIRQVB4NEcXMjGdwSgnCdeEz2XmdweZCKzy45JyactpqGz+RWlN4CKFf
 xsZMgZ42pxKz3yi8=;
Received: from mail-oo1-f46.google.com ([209.85.161.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mLGOL-009kxo-Os
 for ibm-acpi-devel@lists.sourceforge.net; Wed, 01 Sep 2021 02:54:22 +0000
Received: by mail-oo1-f46.google.com with SMTP id
 m14-20020a4ad50e000000b002912a944a47so386084oos.12
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 31 Aug 2021 19:54:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:from:date:message-id:subject:to;
 bh=AKKaXYuKfsTucnrApYEHcuI7gKXj0vmNtRED526o73w=;
 b=c8HSs8zHmyrtkqEFszRu5Ldm6gAm0SS8bg7HV5/UFgxkhvTYESnabxOnyFBNwfzXFz
 SdMOiMJZNf9wn3TZXxrPgD2Hr4/xMr8l9ZyN8/m5mCGI91MlSWHPe++YU8i5e8XUaYy4
 7MRzRYFzsxQJl3lf9dazYRIJ9/rNp5cUk0QhsN49RXCFqqDmrmfWzwC38WE9nlVDwd+f
 nRUUREL0fmUGuwJ5eHbawDb6/xo/EmqUgr/v1hnoy7kmA+iLzFjF+BXQcj6Dd1H6adyM
 4hm7u2FkqSkvHjyv4U0m4PKE2SBxTZomvtCI2ugI85SN0mYcLSEFrcz+pJlHZcdcTett
 X/9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
 bh=AKKaXYuKfsTucnrApYEHcuI7gKXj0vmNtRED526o73w=;
 b=H9ThJXh6qNpWhQiBHntEt8V+zBpIVW6qevX1yD7Nz3motnYaFNS8o02o3sbuTQydPc
 8OPuCynX0La5l+LJK0BlPftbbxJan/dFhYly8qHbFs0i5v2vOXBcRmtyP8tx888JuLaN
 uvmbE71j2HsKlQ5J5oOSddv2UANEMohTx4DJCvn0YFeyy7kCcmBPj9XK+HkxqMeTWgUr
 LnhWvNlzrBg9PfhLw+52ZV08Qgir2paMD0F8ZyNDoJP+cEeFpHIzw5G3pmp2s9HmL7/D
 J3dzh4vNp1cfZRXw28q9bVKhf2lJfEEXBR8e4Regk99mxin3Sh0DHyXUScAffr6nKjnu
 Jf/A==
X-Gm-Message-State: AOAM5302AM93jWYM5O3J55fXpVDeX6Sel4jGDbg83cIkldDdv6Bcs/Ze
 kk88+9QG7QD/BrghbBWr2Lg4uSPZ44siSgEXAFhUc+Dd
X-Google-Smtp-Source: ABdhPJzt2t9RZELypgMmCqqSkyyJqz4RtCtH4S3XPyDVl04atKLtECFOJTCs9GLR5wCrLvUSr7lN/XVRmXiU2sQ9wec=
X-Received: by 2002:a4a:c188:: with SMTP id w8mr17092851oop.24.1630464855796; 
 Tue, 31 Aug 2021 19:54:15 -0700 (PDT)
MIME-Version: 1.0
From: connor johnson <conjamesnor@gmail.com>
Date: Tue, 31 Aug 2021 20:54:04 -0600
Message-ID: <CAEBKFAo5AvUkkkCLT-GJ5h7tdefVPv6ZdpbCGd8DVF=HZLwHPQ@mail.gmail.com>
To: ibm-acpi-devel@lists.sourceforge.net
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: I'm sorry if this question is out of scope for this mailing
 list. But I've exhausted every avenue I know of trying to figure it out.
 I have a thinkpad x1 yoga, when I fold the screen all the way back [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.161.46 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.46 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [conjamesnor[at]gmail.com]
 0.0 HTML_MESSAGE           BODY: HTML included in message
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1mLGOL-009kxo-Os
Subject: [ibm-acpi-devel] Enabling the Keyboard when laptop is in "tablet
 mode"
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
Content-Type: multipart/mixed; boundary="===============8227442719068719234=="
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

--===============8227442719068719234==
Content-Type: multipart/alternative; boundary="0000000000008c706005cae62e30"

--0000000000008c706005cae62e30
Content-Type: text/plain; charset="UTF-8"

I'm sorry if this question is out of scope for this mailing list. But I've
exhausted every avenue I know of trying to figure it out. I have a thinkpad
x1 yoga, when I fold the screen all the way back and enter "tablet mode"
the keyboard gets disabled. I'm looking for a way to enable the keyboard
after the SW_TABLET_MODE is sent. I'm unsure if this is the responsibility
of the driver or bios. In my endless googling I learned that it is possible
via windows so it should be possible in linux even if its a great amount of
work. I've begun reading the source for this driver but C is not my forte.
So if anyone knows how I might be able to accomplish this or if you could
direct me to a more appropriate place to research my question I would be
very grateful!

Thank you,
Connor

--0000000000008c706005cae62e30
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m sorry if this question is out of scope for th=
is mailing list. But I&#39;ve exhausted every avenue I know of trying to fi=
gure it out. I have a thinkpad x1 yoga, when I fold the screen all the way =
back and enter &quot;tablet mode&quot; the keyboard gets disabled. I&#39;m =
looking for a way to enable the keyboard after the SW_TABLET_MODE is sent. =
I&#39;m unsure if this is the responsibility of the driver or bios. In my e=
ndless googling I learned that it is possible via windows so it should be p=
ossible in linux even if its a great amount of work. I&#39;ve begun reading=
 the source for this driver but C is not my forte. So if anyone knows how I=
 might be able to accomplish this or if you could direct me to a more appro=
priate place to research my question I would be very grateful!</div><div><b=
r></div><div>Thank you,</div><div>Connor</div><div><br></div></div>

--0000000000008c706005cae62e30--


--===============8227442719068719234==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline


--===============8227442719068719234==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
ibm-acpi-devel mailing list
ibm-acpi-devel@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/ibm-acpi-devel

--===============8227442719068719234==--

