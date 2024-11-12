Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EC5C9C6283
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 12 Nov 2024 21:26:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tAxSn-0004lg-QJ;
	Tue, 12 Nov 2024 20:26:13 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rafael@kernel.org>) id 1tAxSm-0004la-Of
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 12 Nov 2024 20:26:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Nv8EICV2x9nBQVY6eCLIGX6QjBFlESTpFbKipC6NklI=; b=aRqxsvPfcqY711SyjIlABBWptk
 aRqVlgVYTX0qvvoq4dAhjXHQqZG3zmGXrk/3YLIwgri6gdKfGmgivGbjLSmLYLVWaPo4qyva4WKIy
 o+WCWqc6COxRMUWpUrUxgT5A9CB2gYUJVHLmc5AgoA23bnOK+Ia4ryBDgkffv/1EtwJ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Nv8EICV2x9nBQVY6eCLIGX6QjBFlESTpFbKipC6NklI=; b=J+HPPhKF86Z7Oub+hOf/Il9oNp
 Tdf+taqPGjJaAbtg4zwqt6w+qViydpLbOeU9hX5MFBcM9opW+SQx4oInKzupiFtn8AgzRCVGFVIzj
 QMSyKPb3H2gOrGugv6D8ogKPeKGJG1LgvBUzLPupECcTbVTkWIY0KwSe8a4E1wHPQoeA=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tAxSl-0000HJ-8n for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 12 Nov 2024 20:26:12 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 4C983A42650
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 12 Nov 2024 20:24:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CAB47C4AF09
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 12 Nov 2024 20:26:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1731443164;
 bh=Qcum8ubMRfMH0pNAD4awTm1xz9Aql0UVEtVhsoAChAA=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Hm0ggcuYlNUiIp9CbUr+YPxnNSMRhz0e+TTYH8gJBQIauhGSxC4ZefsUdoMreszHv
 MfjOWDKCin5gSVwTgo3nvFRJXhSLe8wHIqkPnM1ph7elEcTEpMxUDo6FIW6ft4KM2q
 Gs2ey3lwLwygEC3lflIWorsAuo69u1xeT6lj514pf78WC4CtO3w5JChOfhqcb6JLD6
 v9Dsv5UJknEllMOIPrrKewKIdF24kH6GYgInusc+l//Db1+v1fMwHYfWwmqpGRczB4
 xYC5Kcpk8lc11bu54p7XEhFV42EinBx/NcVscbkGqfBzkD8Ko+xHjgOPRgN4CVyezf
 pcZrHdGwNZEGQ==
Received: by mail-oo1-f44.google.com with SMTP id
 006d021491bc7-5ebc349204cso2798716eaf.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 12 Nov 2024 12:26:04 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCUd3vgxDUromyz4hEECbDIYXLtEZKEol3VcrQ2qV8FEV5u9beJvliW17q3JHHykn4toZYFs9t1kkCWmhq09/A==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwEWgV1784C775Ui7xek/wplCfAssvAIRPfEAX0eFo9eMPrJNiQ
 eUdLaDo2t8xP1rSlS0pqAVF5g/4XPJtEIM5mbqnX/jEUNoDqSYMNNq1PS4IlsHPY8RAEwF+9Mph
 j2KRFDvlvMzhslPAVpElVZZmwSYw=
X-Google-Smtp-Source: AGHT+IGueUF6YygHSoCLSttKQ5J82xFSJpZu1XOHp1U7sZTwXBi/RujuKdVKS0T4WDHw3EaUOQdo0MG0CaeY9cW9fsA=
X-Received: by 2002:a05:6820:1f08:b0:5eb:85ee:2cbd with SMTP id
 006d021491bc7-5ee57c60694mr12148398eaf.6.1731443164001; Tue, 12 Nov 2024
 12:26:04 -0800 (PST)
MIME-Version: 1.0
References: <20241109044151.29804-1-mario.limonciello@amd.com>
 <CAJZ5v0gaNKKbf29WD5keQxJdgP93P_iWiQMwp7cOL9NCUumeZA@mail.gmail.com>
 <411286d5-83c2-471f-a723-6a00aee3cc89@amd.com>
In-Reply-To: <411286d5-83c2-471f-a723-6a00aee3cc89@amd.com>
Date: Tue, 12 Nov 2024 21:25:52 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0gj7qoSHd54q+KCLz44Hj+MpkgU7LZG1nNBHf+4dwVHpw@mail.gmail.com>
Message-ID: <CAJZ5v0gj7qoSHd54q+KCLz44Hj+MpkgU7LZG1nNBHf+4dwVHpw@mail.gmail.com>
To: Mario Limonciello <mario.limonciello@amd.com>
X-Spam-Score: -2.6 (--)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, Nov 12, 2024 at 9:20 PM Mario Limonciello <mario.limonciello@amd.com>
    wrote: > > On 11/12/2024 14:16, Rafael J. Wysocki wrote: > > On Sat, Nov
   9, 2024 at 5:42 AM Mario Limonciello > > <mar [...] 
 
 Content analysis details:   (-2.6 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [147.75.193.91 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [147.75.193.91 listed in sa-trusted.bondedsender.org]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [147.75.193.91 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tAxSl-0000HJ-8n
Subject: Re: [ibm-acpi-devel] [PATCH v6 00/22] Add support for binding ACPI
 platform profile to multiple drivers
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
From: "Rafael J. Wysocki via ibm-acpi-devel"
 <ibm-acpi-devel@lists.sourceforge.net>
Reply-To: "Rafael J. Wysocki" <rafael@kernel.org>
Cc: Alexis Belmonte <alexbelm48@gmail.com>, Ike Panhc <ike.pan@canonical.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Gergo Koteles <soyer@irl.hu>,
 "Luke D . Jones" <luke@ljones.dev>, Ai Chao <aichao@kylinos.cn>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:MICROSOFT SURFACE PLATFORM PROFILE DRIVER"
 <platform-driver-x86@vger.kernel.org>, Lee Chun-Yi <jlee@suse.com>,
 Hans de Goede <hdegoede@redhat.com>, Corentin Chary <corentin.chary@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Mark Pearson <mpearson-lenovo@squebb.ca>,
 =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Maximilian Luz <luzmaximilian@gmail.com>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

T24gVHVlLCBOb3YgMTIsIDIwMjQgYXQgOToyMOKAr1BNIE1hcmlvIExpbW9uY2llbGxvCjxtYXJp
by5saW1vbmNpZWxsb0BhbWQuY29tPiB3cm90ZToKPgo+IE9uIDExLzEyLzIwMjQgMTQ6MTYsIFJh
ZmFlbCBKLiBXeXNvY2tpIHdyb3RlOgo+ID4gT24gU2F0LCBOb3YgOSwgMjAyNCBhdCA1OjQy4oCv
QU0gTWFyaW8gTGltb25jaWVsbG8KPiA+IDxtYXJpby5saW1vbmNpZWxsb0BhbWQuY29tPiB3cm90
ZToKPiA+Pgo+ID4+IEN1cnJlbnRseSB0aGVyZSBhcmUgYSBudW1iZXIgb2YgQVNVUyBwcm9kdWN0
cyBvbiB0aGUgbWFya2V0IHRoYXQgaGFwcGVuIHRvCj4gPj4gaGF2ZSBBQ1BJIG9iamVjdHMgZm9y
IGFtZC1wbWYgdG8gYmluZCB0byBhcyB3ZWxsIGFzIGFuIEFDUEkgcGxhdGZvcm0KPiA+PiBwcm9m
aWxlIHByb3ZpZGVkIGJ5IGFzdXMtd21pLgo+ID4+Cj4gPj4gVGhlIEFDUEkgcGxhdGZvcm0gcHJv
ZmlsZSBzdXBwb3J0IGNyZWF0ZWQgYnkgYW1kLXBtZiBvbiB0aGVzZSBBU1VTCj4gPj4gcHJvZHVj
dHMgaXMgIkZ1bmN0aW9uIDkiIHdoaWNoIGlzIHNwZWNpZmljYWxseSBmb3IgIkJJT1Mgb3IgRUMK
PiA+PiBub3RpZmljYXRpb24iIG9mIHBvd2VyIHNsaWRlciBwb3NpdGlvbi4gVGhpcyBmZWF0dXJl
IGlzIGFjdGl2ZWx5IHVzZWQKPiA+PiBieSBzb21lIGRlc2lnbnMgc3VjaCBhcyBGcmFtZXdvcmsg
MTMgYW5kIEZyYW1ld29yayAxNi4KPiA+Pgo+ID4+IE9uIHRoZXNlIEFTVVMgZGVzaWducyB3ZSBr
ZWVwIG9uIHF1aXJraW5nIG1vcmUgYW5kIG1vcmUgb2YgdGhlbSB0byB0dXJuCj4gPj4gb2ZmIHRo
aXMgbm90aWZpY2F0aW9uIHNvIHRoYXQgYXN1cy13bWkgY2FuIGJpbmQuCj4gPj4KPiA+PiBUaGlz
IGhvd2V2ZXIgaXNuJ3QgaG93IFdpbmRvd3Mgd29ya3MuICAiTXVsdGlwbGUiIHRoaW5ncyBhcmUg
bm90aWZpZWQgZm9yCj4gPj4gdGhlIHBvd2VyIHNsaWRlciBwb3NpdGlvbi4gVGhpcyBzZXJpZXMg
YWRqdXN0cyBMaW51eCB0byBiZWhhdmUgc2ltaWxhcmx5Lgo+ID4+Cj4gPj4gTXVsdGlwbGUgZHJp
dmVycyBjYW4gbm93IHJlZ2lzdGVyIGFuIEFDUEkgcGxhdGZvcm0gcHJvZmlsZSBhbmQgd2lsbCBy
ZWFjdAo+ID4+IHRvIHNldCByZXF1ZXN0cy4KPiA+Pgo+ID4+IFRvIGF2b2lkIGNoYW9zLCBvbmx5
IHBvc2l0aW9ucyB0aGF0IGFyZSBjb21tb24gdG8gYm90aCBkcml2ZXJzIGFyZQo+ID4+IGFjY2Vw
dGVkIHdoZW4gdGhlIGxlZ2FjeSAvc3lzL2Zpcm13YXJlL2FjcGkvcGxhdGZvcm1fcHJvZmlsZSBp
bnRlcmZhY2UKPiA+PiBpcyB1c2VkLgo+ID4+Cj4gPj4gVGhpcyBzZXJpZXMgYWxzbyBhZGRzIGEg
bmV3IGNvbmNlcHQgb2YgYSAiY3VzdG9tIiBwcm9maWxlLiAgVGhpcyBhbGxvd3MKPiA+PiB1c2Vy
c3BhY2UgdG8gZGlzY292ZXIgdGhhdCB0aGVyZSBhcmUgbXVsdGlwbGUgZHJpdmVyIGhhbmRsZXJz
IHRoYXQgYXJlCj4gPj4gY29uZmlndXJlZCBkaWZmZXJlbnRseS4KPiA+Pgo+ID4+IFRoaXMgc2Vy
aWVzIGFsc28gYWxsb3dzIGRyb3BwaW5nIGFsbCBvZiB0aGUgUE1GIHF1aXJrcyBmcm9tIGFtZC1w
bWYuCj4gPj4KPiA+PiAtLS0KPiA+PiB2NjoKPiA+PiAgICogQWRkIHBhdGNoIGRldiBwYXRjaCBi
dXQgZG9uJ3QgbWFrZSBtYW5kYXRvcnkKPiA+Cj4gPiBQcm9iYWJseSBhIHR5cG8/Cj4KPiBBaCB3
aG9vcHMsIHllcy4KPgo+ID4KPiA+IFdoaWNoIHBhdGNoIGlzIGl0LCBCVFc/Cj4KPiBQYXRjaCAz
Lgo+Cj4gPgo+ID4gSW4gYW55IGNhc2UsIGlmIHRoZSBtZXJnZSB3aW5kb3cgZm9yIDYuMTMgc3Rh
cnRzIG9uIHRoZSB1cGNvbWluZwo+ID4gd2Vla2VuZCwgd2hpY2ggaXMgbGlrZWx5IHRvIGhhcHBl
biBBRkFJQ1MsIEknbGwgZGVmZXIgYXBwbHlpbmcgdGhpcwo+ID4gc2VyaWVzIHVudGlsIDYuMTMt
cmMxIGlzIG91dC4KPiA+Cj4gPiBJdCdzIGxhcmdlciBhbmQgaXQncyBiZWVuIGNoYW5naW5nIHRv
byBvZnRlbiByZWNlbnRseSBmb3IgbWUgdG8gY2F0Y2gKPiA+IHVwIGFuZCBJJ2xsIGJlIG11Y2gg
bW9yZSBjb21mb3J0YWJsZSBpZiBpdCBzcGVuZHMgc29tZSB0aW1lIGluCj4gPiBsaW51eC1uZXh0
IGJlZm9yZSBnb2luZyBpbnRvIHRoZSBtYWlubGluZSAoYW5kIG5vdCBkdXJpbmcgYSBtZXJnZQo+
ID4gd2luZG93IGZvciB0aGF0IG1hdHRlcikuCj4gPgo+Cj4gSSdtIHRoYW5rZnVsOyBBcm1pbiBl
bmRlZCB1cCBoYXZpbmcgYSBsb3Qgb2YgdmVyeSB2YWx1YWJsZSBmZWVkYmFjay4KPgo+IFllYWgs
IGl0IG1ha2VzIHNlbnNlIHRvIGRlZmVyIHRvIG5leHQgY3ljbGUuCj4KPiBXb3VsZCB5b3UgcHJl
ZmVyIG1lIHRvIHJlYmFzZSBhbmQgcmVzZW5kIGFzIHY3IGFmdGVyIHRoZSBtZXJnZSB3aW5kb3cg
b3IKPiB3aWxsIHlvdSBqdXN0IGFkZCBpdCB0byBhIFRPRE8/CgpJZiByZWJhc2luZyBpcyBuZWVk
ZWQsIGl0IHdpbGwgYmUgd2VsY29tZS4gIEFsc28gaWYgeW91IG5lZWQvd2FudCB0bwptYWtlIGFu
eSBjaGFuZ2VzIGluIHRoZSBtZWFudGltZSwgcGxlYXNlIHJlc3Bpbi4gIE90aGVyd2lzZSBJIGNh
biBqdXN0CnBpY2sgdXAgdGhlIGN1cnJlbnQgc2VyaWVzLgoKPiA+PiAgICogU2VlIG90aGVyIHBh
dGNoZXMgY2hhbmdlbG9ncyBmb3IgaW5kaXZpZHVhbGl6ZWQgY2hhbmdlcwo+ID4+Cj4gPj4gTWFy
aW8gTGltb25jaWVsbG8gKDIyKToKPiA+PiAgICBBQ1BJOiBwbGF0Zm9ybS1wcm9maWxlOiBBZGQg
YSBuYW1lIG1lbWJlciB0byBoYW5kbGVycwo+ID4+ICAgIHBsYXRmb3JtL3g4Ni9kZWxsOiBkZWxs
LXBjOiBDcmVhdGUgcGxhdGZvcm0gZGV2aWNlCj4gPj4gICAgQUNQSTogcGxhdGZvcm1fcHJvZmls
ZTogQWRkIGRldmljZSBwb2ludGVyIGludG8gcGxhdGZvcm0gcHJvZmlsZQo+ID4+ICAgICAgaGFu
ZGxlcgo+ID4+ICAgIEFDUEk6IHBsYXRmb3JtX3Byb2ZpbGU6IEFkZCBwbGF0Zm9ybSBoYW5kbGVy
IGFyZ3VtZW50IHRvCj4gPj4gICAgICBwbGF0Zm9ybV9wcm9maWxlX3JlbW92ZSgpCj4gPj4gICAg
QUNQSTogcGxhdGZvcm1fcHJvZmlsZTogUGFzcyB0aGUgcHJvZmlsZSBoYW5kbGVyIGludG8KPiA+
PiAgICAgIHBsYXRmb3JtX3Byb2ZpbGVfbm90aWZ5KCkKPiA+PiAgICBBQ1BJOiBwbGF0Zm9ybV9w
cm9maWxlOiBNb3ZlIHNhbml0eSBjaGVjayBvdXQgb2YgdGhlIG11dGV4Cj4gPj4gICAgQUNQSTog
cGxhdGZvcm1fcHJvZmlsZTogTW92ZSBtYXRjaGluZyBzdHJpbmcgZm9yIG5ldyBwcm9maWxlIG91
dCBvZgo+ID4+ICAgICAgbXV0ZXgKPiA+PiAgICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBVc2Ug
Z3VhcmQobXV0ZXgpIGZvciByZWdpc3Rlci91bnJlZ2lzdGVyCj4gPj4gICAgQUNQSTogcGxhdGZv
cm1fcHJvZmlsZTogVXNlIGBzY29wZWRfY29uZF9ndWFyZGAKPiA+PiAgICBBQ1BJOiBwbGF0Zm9y
bV9wcm9maWxlOiBDcmVhdGUgY2xhc3MgZm9yIEFDUEkgcGxhdGZvcm0gcHJvZmlsZQo+ID4+ICAg
IEFDUEk6IHBsYXRmb3JtX3Byb2ZpbGU6IEFkZCBuYW1lIGF0dHJpYnV0ZSB0byBjbGFzcyBpbnRl
cmZhY2UKPiA+PiAgICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBBZGQgY2hvaWNlcyBhdHRyaWJ1
dGUgZm9yIGNsYXNzIGludGVyZmFjZQo+ID4+ICAgIEFDUEk6IHBsYXRmb3JtX3Byb2ZpbGU6IEFk
ZCBwcm9maWxlIGF0dHJpYnV0ZSBmb3IgY2xhc3MgaW50ZXJmYWNlCj4gPj4gICAgQUNQSTogcGxh
dGZvcm1fcHJvZmlsZTogTm90aWZ5IGNoYW5nZSBldmVudHMgb24gcmVnaXN0ZXIgYW5kCj4gPj4g
ICAgICB1bnJlZ2lzdGVyCj4gPj4gICAgQUNQSTogcGxhdGZvcm1fcHJvZmlsZTogT25seSBzaG93
IHByb2ZpbGVzIGNvbW1vbiBmb3IgYWxsIGhhbmRsZXJzCj4gPj4gICAgQUNQSTogcGxhdGZvcm1f
cHJvZmlsZTogQWRkIGNvbmNlcHQgb2YgYSAiY3VzdG9tIiBwcm9maWxlCj4gPj4gICAgQUNQSTog
cGxhdGZvcm1fcHJvZmlsZTogTWFrZSBzdXJlIGFsbCBwcm9maWxlIGhhbmRsZXJzIGFncmVlIG9u
Cj4gPj4gICAgICBwcm9maWxlCj4gPj4gICAgQUNQSTogcGxhdGZvcm1fcHJvZmlsZTogQ2hlY2sg
YWxsIHByb2ZpbGUgaGFuZGxlciB0byBjYWxjdWxhdGUgbmV4dAo+ID4+ICAgIEFDUEk6IHBsYXRm
b3JtX3Byb2ZpbGU6IE5vdGlmeSBjbGFzcyBkZXZpY2UgZnJvbQo+ID4+ICAgICAgcGxhdGZvcm1f
cHJvZmlsZV9ub3RpZnkoKQo+ID4+ICAgIEFDUEk6IHBsYXRmb3JtX3Byb2ZpbGU6IEFsbG93IG11
bHRpcGxlIGhhbmRsZXJzCj4gPj4gICAgcGxhdGZvcm0veDg2L2FtZDogcG1mOiBEcm9wIGFsbCBx
dWlya3MKPiA+PiAgICBEb2N1bWVudGF0aW9uOiBBZGQgZG9jdW1lbnRhdGlvbiBhYm91dCBjbGFz
cyBpbnRlcmZhY2UgZm9yIHBsYXRmb3JtCj4gPj4gICAgICBwcm9maWxlcwo+ID4+Cj4gPj4gICAu
Li4vQUJJL3Rlc3Rpbmcvc3lzZnMtcGxhdGZvcm1fcHJvZmlsZSAgICAgICAgfCAgIDUgKwo+ID4+
ICAgLi4uL3VzZXJzcGFjZS1hcGkvc3lzZnMtcGxhdGZvcm1fcHJvZmlsZS5yc3QgIHwgIDI4ICsK
PiA+PiAgIGRyaXZlcnMvYWNwaS9wbGF0Zm9ybV9wcm9maWxlLmMgICAgICAgICAgICAgICB8IDUz
NyArKysrKysrKysrKysrKy0tLS0KPiA+PiAgIC4uLi9zdXJmYWNlL3N1cmZhY2VfcGxhdGZvcm1f
cHJvZmlsZS5jICAgICAgICB8ICAgOCArLQo+ID4+ICAgZHJpdmVycy9wbGF0Zm9ybS94ODYvYWNl
ci13bWkuYyAgICAgICAgICAgICAgIHwgIDEyICstCj4gPj4gICBkcml2ZXJzL3BsYXRmb3JtL3g4
Ni9hbWQvcG1mL01ha2VmaWxlICAgICAgICAgfCAgIDIgKy0KPiA+PiAgIGRyaXZlcnMvcGxhdGZv
cm0veDg2L2FtZC9wbWYvY29yZS5jICAgICAgICAgICB8ICAgMSAtCj4gPj4gICBkcml2ZXJzL3Bs
YXRmb3JtL3g4Ni9hbWQvcG1mL3BtZi1xdWlya3MuYyAgICAgfCAgNjYgLS0tCj4gPj4gICBkcml2
ZXJzL3BsYXRmb3JtL3g4Ni9hbWQvcG1mL3BtZi5oICAgICAgICAgICAgfCAgIDMgLQo+ID4+ICAg
ZHJpdmVycy9wbGF0Zm9ybS94ODYvYW1kL3BtZi9zcHMuYyAgICAgICAgICAgIHwgICA0ICstCj4g
Pj4gICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9hc3VzLXdtaS5jICAgICAgICAgICAgICAgfCAgMTAg
Ky0KPiA+PiAgIGRyaXZlcnMvcGxhdGZvcm0veDg2L2RlbGwvYWxpZW53YXJlLXdtaS5jICAgICB8
ICAgOCArLQo+ID4+ICAgZHJpdmVycy9wbGF0Zm9ybS94ODYvZGVsbC9kZWxsLXBjLmMgICAgICAg
ICAgIHwgIDM2ICstCj4gPj4gICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9ocC9ocC13bWkuYyAgICAg
ICAgICAgICAgfCAgIDggKy0KPiA+PiAgIGRyaXZlcnMvcGxhdGZvcm0veDg2L2lkZWFwYWQtbGFw
dG9wLmMgICAgICAgICB8ICAgNiArLQo+ID4+ICAgLi4uL3BsYXRmb3JtL3g4Ni9pbnNwdXJfcGxh
dGZvcm1fcHJvZmlsZS5jICAgIHwgICA3ICstCj4gPj4gICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni90
aGlua3BhZF9hY3BpLmMgICAgICAgICAgfCAgMTYgKy0KPiA+PiAgIGluY2x1ZGUvbGludXgvcGxh
dGZvcm1fcHJvZmlsZS5oICAgICAgICAgICAgICB8ICAgOSArLQo+ID4+ICAgMTggZmlsZXMgY2hh
bmdlZCwgNTUzIGluc2VydGlvbnMoKyksIDIxMyBkZWxldGlvbnMoLSkKPiA+PiAgIGRlbGV0ZSBt
b2RlIDEwMDY0NCBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9hbWQvcG1mL3BtZi1xdWlya3MuYwo+ID4+
Cj4gPj4KPiA+PiBiYXNlLWNvbW1pdDogZDY4Y2I2MDIzMzU2YWYzYmQzMTkzOTgzYWQ0ZWMwMzk1
NGEwYjNlMgo+ID4+IC0tCj4gPj4gMi40My4wCj4gPj4KPgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdApp
Ym0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vm
b3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
