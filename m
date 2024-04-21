Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C35C8AC146
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Apr 2024 23:49:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1ryf3P-0002CM-Od;
	Sun, 21 Apr 2024 21:48:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <andy.shevchenko@gmail.com>) id 1ryf3O-0002C9-Oy
 for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 21:48:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AcbdlQ93dl9zp9fCPydt3efKLbbxghMP3mJStSUfmfw=; b=KldGjdfIarkFw4iQdtbzMYOF4O
 CdhZRAkLuBfBnmwq7rqPvN60RMYZFo2/BSAq3O8TVqAuSdmRBxXaJhWezCMsoOHuvJskJThWeHHg2
 /3OhtdsIH/9dmUz7KVrW1yl1PyaEMiwlKu5UctuyZwMXJvOB13aC4fYccXZOAwQAGXPg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AcbdlQ93dl9zp9fCPydt3efKLbbxghMP3mJStSUfmfw=; b=L0Llx9gMHNDtsv3aYR/ycsaXtj
 gkOUH6PXQrO+1GsO3T4DAtSG7xebW2t+RvMk2CwKSowN63ojGWP1pLP8oDykpkrv1zSeGUTHrLDTZ
 8jDGtGWF7l1sxHBNy/8QkdjqxThfKw5GRy9vZAYZjZ4dqP40QZEq90AizCqwmr9L1Lko=;
Received: from mail-wm1-f50.google.com ([209.85.128.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ryf3O-0006Ax-9d for ibm-acpi-devel@lists.sourceforge.net;
 Sun, 21 Apr 2024 21:48:55 +0000
Received: by mail-wm1-f50.google.com with SMTP id
 5b1f17b1804b1-4187c47405aso24898665e9.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sun, 21 Apr 2024 14:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1713736123; x=1714340923; darn=lists.sourceforge.net;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=AcbdlQ93dl9zp9fCPydt3efKLbbxghMP3mJStSUfmfw=;
 b=iFRgTI88scyNW9ndPQ58BXUWpKRkQaiVvsJ0SAv7Ki6UMC4VTXolzzn/sNVs3p+ArK
 oq3+ndr7HHOiR+DY11y1tX75mcTOWzPC2r/dEHAWUTsSMvIY++GqGVPwaR8P2GzftfnJ
 JNXglcmubNevTy77VsvOtmNnRWD0vd0uUC/GeMVD0ZSbhUqP2ofOgg29dTUBikPdLlXC
 i0HEV3Z2wxvYJeTi38PvAbgqZnbpk4BypytKdg1kNvn3L9f14s1ZHidw1YlgupatDwkW
 PPYs0Yqt3UwBgn+HZNaaabkEUfZsmbi2s05XzJqQs5A/LtPOFrRkjvokFH5fuu0mrNLn
 TteQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713736123; x=1714340923;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=AcbdlQ93dl9zp9fCPydt3efKLbbxghMP3mJStSUfmfw=;
 b=HVVEkafFJxfI8bxIJbU+1JCZYNEvxpA2fnzGwDOVeKrz0pHQJX2zz7c1FN6B6sfp9L
 KgYsOtQ87EVWlFG1vVeMfyUqc24Bw0yJmoQiMxEFZSuV0akhxyNPOVgxLTvX4RM+HhkV
 DHcyijk2ulZRZh0K5xJr0GITcsLe6zAdqxIE0u1LKjY6SsiKAp5M4d0uPchPaGoZP4Zt
 +BwObgnUoE5wXFUbg/m2zMn27b5GkpmtgbKt65aS9GXHmK2pvFItDaY3ompEp1PLH/UN
 s4AzBYx8zJUXEXS6eRmIEPras4Gj6Q6JAeOdEJ0IWaTlWphIKMIqV8IjWxtRbuI9IuLC
 WvkQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUZAzJaOxKy/PrMZf1Aa7Wvx487tTvhh907+Y0TqkfNtt+ktCE8pag4sD8im7sosFmMyFZ1YhaljfeqPtE/eORoakVv87jQBXl6w54Xz1tcANMbmj8=
X-Gm-Message-State: AOJu0Yzo7e7vFk+seolPy9U2cYZlJDtjCdQ40F+EWJt18eLfj/bK+Aeg
 /HKnlcKdq699ao6zaSAtGQ7dtJ3dwGCUeYLysudw8/jSGG1oSwEEfef8zksQuUiN9A/P1M8/23X
 o+bx0+oIkZOJCVqN3gGT+ociRDMXUx6pR
X-Google-Smtp-Source: AGHT+IGloMv88SsMs8qgtKGExI4Nuj1iD+hFe2x1gRi7jJQ6MWrH85Im3ypS5/GlLm7iSMxRU+Mso9QsIMXpQCpXanw=
X-Received: by 2002:a05:6512:2154:b0:516:be80:178f with SMTP id
 s20-20020a056512215400b00516be80178fmr4216858lfr.43.1713726754598; Sun, 21
 Apr 2024 12:12:34 -0700 (PDT)
MIME-Version: 1.0
References: <20240421154520.37089-1-hdegoede@redhat.com>
 <20240421154520.37089-18-hdegoede@redhat.com>
In-Reply-To: <20240421154520.37089-18-hdegoede@redhat.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Sun, 21 Apr 2024 22:11:58 +0300
Message-ID: <CAHp75VeJaisUOt8DmVyNyEuHypkXYqBs4j3y+8EcinHt0L=TRQ@mail.gmail.com>
To: Hans de Goede <hdegoede@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, Apr 21, 2024 at 6:45 PM Hans de Goede wrote: > >
    Change the default keymap to report the correct keycodes for the volume and
    > brightness keys. Reporting key events for these is already fi [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
                             DNSWL was blocked.  See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [209.85.128.50 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
                             provider
                             [andy.shevchenko[at]gmail.com]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.128.50 listed in wl.mailspike.net]
X-Headers-End: 1ryf3O-0006Ax-9d
Subject: Re: [ibm-acpi-devel] [PATCH 17/24] platform/x86: thinkpad_acpi: Use
 correct keycodes for volume and brightness keys
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
Cc: Andy Shevchenko <andy@kernel.org>, platform-driver-x86@vger.kernel.org,
 ibm-acpi-devel@lists.sourceforge.net,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Vishnu Sankar <vishnuocv@gmail.com>, Mark Pearson <mpearson-lenovo@squebb.ca>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Nitin Joshi <njoshi1@lenovo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gU3VuLCBBcHIgMjEsIDIwMjQgYXQgNjo0NeKAr1BNIEhhbnMgZGUgR29lZGUgPGhkZWdvZWRl
QHJlZGhhdC5jb20+IHdyb3RlOgo+Cj4gQ2hhbmdlIHRoZSBkZWZhdWx0IGtleW1hcCB0byByZXBv
cnQgdGhlIGNvcnJlY3Qga2V5Y29kZXMgZm9yIHRoZSB2b2x1bWUgYW5kCj4gYnJpZ2h0bmVzcyBr
ZXlzLiBSZXBvcnRpbmcga2V5IGV2ZW50cyBmb3IgdGhlc2UgaXMgYWxyZWFkeSBmaWx0ZXJlZCBv
dXQgYnkKPiB0aGUgaG90a2V5X3Jlc2VydmVkX21hc2sgd2hpY2ggbWFza3MgdGhlc2Uga2V5cyBv
dXQgb2YgaG90a2V5X3VzZXJfbWFzayBhdAo+IGluaXRpYWxpemF0aW9uIHRpbWUsIHNvIHRoZXJl
IGlzIG5vIG5lZWQgdG8gYWxzbyBtYXAgdGhlbSB0byBLRVlfUkVTRVJWRUQuCj4KPiBUaGlzIGF2
b2lkcyB1c2Vycywgd2hvIHdhbnQgdGhlc2UgdG8gYmUgcmVwb3J0ZWQsIGhhdmluZyB0byBhbHNv
IHJlbWFwCj4gdGhlIGtleWNvZGVzIG9uIHRvcCBvZiBvdmVycmlkaW5nIGhvdGtleV91c2VyX21h
c2sgdG8gcmVwb3J0IHRoZXNlCj4gYW5kIExpbnV4IHVzZXJzcGFjZSBoYXMgYWxyZWFkeSBiZWVu
IG92ZXJyaWRkaW5nIHRoZSBLRVlfUkVTRVJWRUQgbWFwcGluZ3MKCm92ZXJyaWRpbmcKCj4gd2l0
aCB0aGUgY29ycmVjdCBrZXljb2RlcyB0aHJvdWdoIHVkZXYvaHdkYi82MC1rZXlib2FyZC5od2Ri
IGZvciB5ZWFycyBub3cuCj4KPiBBbHNvIGRyb3AgaG90a2V5X3VubWFwKCkgaXQgd2FzIG9ubHkg
dXNlZCB0byBkeW5hbWljYWxseSBtYXAgdGhlIGJyaWdodG5lc3MKPiBrZXlzIHRvIEtFWV9SRVNF
UlZFRCBhbmQgYWZ0ZXIgcmVtb3ZpbmcgdGhhdCBpdCBoYXMgbm8gcmVtYWluaW5nIHVzZXJzLgoK
Li4uCgo+ICsgICAgICAgICAgICAgICAvKiBicmlnaHRuZXNzOiBmaXJtd2FyZSBhbHdheXMgcmVh
Y3RzIHRvIHRoZW0uCj4gKyAgICAgICAgICAgICAgICAqIFN1cHByZXNzZWQgYnkgZGVmYXVsdCB0
aHJvdWdoIGhvdGtleV9yZXNlcnZlZF9tYXNrLgo+ICsgICAgICAgICAgICAgICAgKi8KCj4gKyAg
ICAgICAgICAgICAgIC8qIFRoaW5rbGlnaHQ6IGZpcm13YXJlIGFsd2F5cyByZWFjdCB0byBpdC4K
PiArICAgICAgICAgICAgICAgICogU3VwcHJlc3NlZCBieSBkZWZhdWx0IHRocm91Z2ggaG90a2V5
X3Jlc2VydmVkX21hc2suCj4gKyAgICAgICAgICAgICAgICAqLwoKPiAgICAgICAgICAgICAgICAg
LyogVm9sdW1lOiBmaXJtd2FyZSBhbHdheXMgcmVhY3QgdG8gaXQgYW5kIHJlcHJvZ3JhbXMKPiAg
ICAgICAgICAgICAgICAgICogdGhlIGJ1aWx0LWluICpleHRyYSogbWl4ZXIuICBOZXZlciBtYXAg
aXQgdG8gY29udHJvbAo+ICsgICAgICAgICAgICAgICAgKiBhbm90aGVyIG1peGVyIGJ5IGRlZmF1
bHQuCj4gKyAgICAgICAgICAgICAgICAqIFN1cHByZXNzZWQgYnkgZGVmYXVsdCB0aHJvdWdoIGhv
dGtleV9yZXNlcnZlZF9tYXNrLgo+ICsgICAgICAgICAgICAgICAgKi8KCkhtbS4uLiBXaGlsZSBh
dCBpdCwgY2FuIHdlIHJlY3RpZnkgdGhlIGJsb2NrIGNvbW1lbnRzIHRvIGZvbGxvdyB0aGUKc3Rh
bmRhcmQgc3R5bGU/CihJIG1lYW50IHRob3NlIHdoaWNoIHlvdSBhcmUgdG91Y2hpbmcgaGVyZS4p
CgotLSAKV2l0aCBCZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNoZW5rbwoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcg
bGlzdAppYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5z
b3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
