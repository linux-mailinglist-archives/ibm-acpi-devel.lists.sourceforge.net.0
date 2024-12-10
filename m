Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 13C209EB872
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 10 Dec 2024 18:39:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tL4Bz-0000US-NM;
	Tue, 10 Dec 2024 17:38:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rafael@kernel.org>) id 1tL4Bz-0000UL-4S
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Dec 2024 17:38:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4SDbiz0DcsM6A734nrTIbZfpD6kjHGbARBXoGS5x9aU=; b=WF9D+Jw3ZrQwYZpZ7q4/f0zlvF
 qE0mjrBbgbk1RTQlR0riCjGX4vWu447JSYIF0fq6ahCNxl+5AZprKKiphuLwN7zyN2sSVFpFMwgwr
 074KNLoic02bSgb6C9olpLFxXHVlU3EuxtYMqYg9gjcO49o874pcPdkLjqC68JkcLO6M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4SDbiz0DcsM6A734nrTIbZfpD6kjHGbARBXoGS5x9aU=; b=dQkrjJNzS9uUXHJtxi+QqwtFnK
 3bgbj7mA34Vlbh7MtIw7UPOOzKapWja6LoDxe+h/WXT8dWcDEDp4jwdkhXJc+/j/3qBiOf3ywI7uF
 jmvqkrZaBxQPKM8jDZi5T5Zwmho3yJX/I55pOi7YMlU1Dhr4s7uXWfDPNIf2yVr73k9U=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tL4By-0000L4-8V for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 10 Dec 2024 17:38:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 263EFA4086E
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 10 Dec 2024 17:36:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 36CF2C4CEDD
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 10 Dec 2024 17:38:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1733852307;
 bh=o1u7OnnttQeO/IxubvdYjlivgCC+xe/2UUhXo9WuHNs=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=S5EYM6o1of1es8VkyjY3dGYI580AUWB0gWB53ssDKo5A1HWo4xG0ap9vSMf9ZoVlA
 SNM53uVlEt6jB2m2Y9YcFSB9OovNVqh33v3c/P3/0JD3xHYCB7fHqvP3XxcJkg9TWC
 KCk97aujictxFbaz6s9cYyNkruKUQMJ0HIxE8bkyZ1cVB1W/akyEHt73PzKmWS87bR
 /yWOX7+iap+Qs/iXF66XMzwgVxl0mWIZfB2C85Y4C38tAwfzxveT6KVSg7TKvn9C5z
 cju/5RKbBkQ1kcW6CZtuVwEt8gvQLB4+eE9JQQzLpaGpXRdla5SELqpNFJlmJmZcWO
 Q6LbrMVeGA9vg==
Received: by mail-ot1-f44.google.com with SMTP id
 46e09a7af769-71decc7de4eso681159a34.2
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 10 Dec 2024 09:38:27 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCUDB1t7of0ejGBsnP3rxUsSsX1w295O2j1WA1E48r5ttmGxyXcuxU7UrIKSSlf+k5qF4L4LV//Kup8Nfwhc1w==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yxd+k0pe+O3IlrpfG62ltInNRGbuXwwgt5gcd5KvjXrXWzY9dpF
 RRWjatWoIlMWavCxKVe0Nidhjg4GadNwRhb6qOKS0n6spuY7FUeNMY3POG3/rBBTcVStOxLMmU6
 JNTTjQMXxFQ8YbZjJ3ReBnhHx4W8=
X-Google-Smtp-Source: AGHT+IHUPbz3C9KxTvXmAiFGqFm6CPuGoDB51rE0jLIxNsliSKNlQMBOJ52QuORyme2pcvawVTYaO/jhx6VltCaUhOA=
X-Received: by 2002:a05:6830:34a3:b0:717:f701:4842 with SMTP id
 46e09a7af769-71e0227fc96mr4131664a34.28.1733852306444; Tue, 10 Dec 2024
 09:38:26 -0800 (PST)
MIME-Version: 1.0
References: <20241206031918.1537-1-mario.limonciello@amd.com>
 <a34c7648-02cb-76e9-53f4-e54003c98ecb@linux.intel.com>
In-Reply-To: <a34c7648-02cb-76e9-53f4-e54003c98ecb@linux.intel.com>
Date: Tue, 10 Dec 2024 18:38:15 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0hoD9ZBvsbE4bvfgJc09ijAY421vNngCYaz3qy-Cg2bdw@mail.gmail.com>
Message-ID: <CAJZ5v0hoD9ZBvsbE4bvfgJc09ijAY421vNngCYaz3qy-Cg2bdw@mail.gmail.com>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
X-Spam-Score: -3.0 (---)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Ilpo, On Tue, Dec 10, 2024 at 6:30 PM Ilpo Järvinen
   <ilpo.jarvinen@linux.intel.com> wrote: > > Hi Rafael, > > This series seems
    ready and Mario has requested it to be merged through > platform drivers
   tr [...] 
 
 Content analysis details:   (-3.0 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
                             medium trust
                             [147.75.193.91 listed in list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                          [147.75.193.91 listed in sa-trusted.bondedsender.org]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [147.75.193.91 listed in bl.score.senderscore.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tL4By-0000L4-8V
Subject: Re: [ibm-acpi-devel] [PATCH v10 00/22] Add support for binding ACPI
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
Cc: Alexis Belmonte <alexbelm48@gmail.com>,
 Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Gergo Koteles <soyer@irl.hu>,
 "Luke D . Jones" <luke@ljones.dev>, Ai Chao <aichao@kylinos.cn>,
 open list <linux-kernel@vger.kernel.org>,
 "open list:MICROSOFT SURFACE PLATFORM PROFILE DRIVER"
 <platform-driver-x86@vger.kernel.org>, Lee Chun-Yi <jlee@suse.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Mario Limonciello <mario.limonciello@amd.com>,
 Corentin Chary <corentin.chary@gmail.com>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Mark Pearson <mpearson-lenovo@squebb.ca>, Ike Panhc <ike.pan@canonical.com>,
 Matthew Schwartz <matthew.schwartz@linux.dev>,
 "open list:ACPI" <linux-acpi@vger.kernel.org>,
 Maximilian Luz <luzmaximilian@gmail.com>,
 "open list:THINKPAD ACPI EXTRAS DRIVER" <ibm-acpi-devel@lists.sourceforge.net>,
 Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGkgSWxwbywKCk9uIFR1ZSwgRGVjIDEwLCAyMDI0IGF0IDY6MzDigK9QTSBJbHBvIErDpHJ2aW5l
bgo8aWxwby5qYXJ2aW5lbkBsaW51eC5pbnRlbC5jb20+IHdyb3RlOgo+Cj4gSGkgUmFmYWVsLAo+
Cj4gVGhpcyBzZXJpZXMgc2VlbXMgcmVhZHkgYW5kIE1hcmlvIGhhcyByZXF1ZXN0ZWQgaXQgdG8g
YmUgbWVyZ2VkIHRocm91Z2gKPiBwbGF0Zm9ybSBkcml2ZXJzIHRyZWUgZGVzcGl0ZSBtYWpvcml0
eSBvZiBjaGFuZ2VzIHRvdWNoaW5nCj4gZHJpdmVycy9hY3BpL3BsYXRmb3JtX3Byb2ZpbGUuYyBi
ZWNhdXNlIGl0cyBBUEkgcmVsYXRlcyB0byBtYW55IHBkeDg2Cj4gZHJpdmVycy4KPgo+IElzIHRo
YXQgZmluZSB3aXRoIHlvdT8KClllcywgaXQgaXMsIHRoYW5rcyEKCj4gT24gVGh1LCA1IERlYyAy
MDI0LCBNYXJpbyBMaW1vbmNpZWxsbyB3cm90ZToKPgo+ID4gQ3VycmVudGx5IHRoZXJlIGFyZSBh
IG51bWJlciBvZiBBU1VTIHByb2R1Y3RzIG9uIHRoZSBtYXJrZXQgdGhhdCBoYXBwZW4gdG8KPiA+
IGhhdmUgQUNQSSBvYmplY3RzIGZvciBhbWQtcG1mIHRvIGJpbmQgdG8gYXMgd2VsbCBhcyBhbiBB
Q1BJIHBsYXRmb3JtCj4gPiBwcm9maWxlIHByb3ZpZGVkIGJ5IGFzdXMtd21pLgo+ID4KPiA+IFRo
ZSBBQ1BJIHBsYXRmb3JtIHByb2ZpbGUgc3VwcG9ydCBjcmVhdGVkIGJ5IGFtZC1wbWYgb24gdGhl
c2UgQVNVUwo+ID4gcHJvZHVjdHMgaXMgIkZ1bmN0aW9uIDkiIHdoaWNoIGlzIHNwZWNpZmljYWxs
eSBmb3IgIkJJT1Mgb3IgRUMKPiA+IG5vdGlmaWNhdGlvbiIgb2YgcG93ZXIgc2xpZGVyIHBvc2l0
aW9uLiBUaGlzIGZlYXR1cmUgaXMgYWN0aXZlbHkgdXNlZAo+ID4gYnkgc29tZSBkZXNpZ25zIHN1
Y2ggYXMgRnJhbWV3b3JrIDEzIGFuZCBGcmFtZXdvcmsgMTYuCj4gPgo+ID4gT24gdGhlc2UgQVNV
UyBkZXNpZ25zIHdlIGtlZXAgb24gcXVpcmtpbmcgbW9yZSBhbmQgbW9yZSBvZiB0aGVtIHRvIHR1
cm4KPiA+IG9mZiB0aGlzIG5vdGlmaWNhdGlvbiBzbyB0aGF0IGFzdXMtd21pIGNhbiBiaW5kLgo+
ID4KPiA+IFRoaXMgaG93ZXZlciBpc24ndCBob3cgV2luZG93cyB3b3Jrcy4gICJNdWx0aXBsZSIg
dGhpbmdzIGFyZSBub3RpZmllZCBmb3IKPiA+IHRoZSBwb3dlciBzbGlkZXIgcG9zaXRpb24uIFRo
aXMgc2VyaWVzIGFkanVzdHMgTGludXggdG8gYmVoYXZlIHNpbWlsYXJseS4KPiA+Cj4gPiBNdWx0
aXBsZSBkcml2ZXJzIGNhbiBub3cgcmVnaXN0ZXIgYW4gQUNQSSBwbGF0Zm9ybSBwcm9maWxlIGFu
ZCB3aWxsIHJlYWN0Cj4gPiB0byBzZXQgcmVxdWVzdHMuCj4gPgo+ID4gVG8gYXZvaWQgY2hhb3Ms
IG9ubHkgcG9zaXRpb25zIHRoYXQgYXJlIGNvbW1vbiB0byBib3RoIGRyaXZlcnMgYXJlCj4gPiBh
Y2NlcHRlZCB3aGVuIHRoZSBsZWdhY3kgL3N5cy9maXJtd2FyZS9hY3BpL3BsYXRmb3JtX3Byb2Zp
bGUgaW50ZXJmYWNlCj4gPiBpcyB1c2VkLgo+ID4KPiA+IFRoaXMgc2VyaWVzIGFsc28gYWRkcyBh
IG5ldyBjb25jZXB0IG9mIGEgImN1c3RvbSIgcHJvZmlsZS4gIFRoaXMgYWxsb3dzCj4gPiB1c2Vy
c3BhY2UgdG8gZGlzY292ZXIgdGhhdCB0aGVyZSBhcmUgbXVsdGlwbGUgZHJpdmVyIGhhbmRsZXJz
IHRoYXQgYXJlCj4gPiBjb25maWd1cmVkIGRpZmZlcmVudGx5Lgo+ID4KPiA+IFRoaXMgc2VyaWVz
IGFsc28gYWxsb3dzIGRyb3BwaW5nIGFsbCBvZiB0aGUgUE1GIHF1aXJrcyBmcm9tIGFtZC1wbWYu
Cj4gPgo+ID4gTk9URTogQWx0aG91Z2ggdGhpcyBzZXJpZXMgY2hhbmdlcyBjb2RlIGluIGFjcGkg
cGxhdGZvcm0gcHJvZmlsZSwgSSB0aGluawo+ID4gICAgICAgaXQgaXMgYmV0dGVyIHRvIGdvIHRo
cm91Z2ggdGhlIHBsYXRmb3JtLXg4NiB0cmVlIGFzIG1vcmUgZHJpdmVycyBjYW4KPiA+ICAgICAg
IGJlIGludHJvZHVjZWQgZHVyaW5nIHRoZSBrZXJuZWwgY3ljbGUgYW5kIHNob3VsZCBtYWtlIHRo
ZSBjaGFuZ2VzIHRvCj4gPiAgICAgICBzdXBwb3J0IGNsYXNzIGludGVyZmFjZSB3aGVuIG1lcmdp
bmcuCj4gPgo+ID4gdjEwOgo+ID4gICogV2hpdGVzcGFjZSBjaGFuZ2VzCj4gPiAgKiBEb2N1bWVu
dGF0aW9uIHVwZGF0ZSBmb3IgY3VzdG9tIGluIGEgc2luZ2xlIGRyaXZlcgo+ID4KPiA+IE1hcmlv
IExpbW9uY2llbGxvICgyMik6Cj4gPiAgIEFDUEk6IHBsYXRmb3JtLXByb2ZpbGU6IEFkZCBhIG5h
bWUgbWVtYmVyIHRvIGhhbmRsZXJzCj4gPiAgIHBsYXRmb3JtL3g4Ni9kZWxsOiBkZWxsLXBjOiBD
cmVhdGUgcGxhdGZvcm0gZGV2aWNlCj4gPiAgIEFDUEk6IHBsYXRmb3JtX3Byb2ZpbGU6IEFkZCBk
ZXZpY2UgcG9pbnRlciBpbnRvIHBsYXRmb3JtIHByb2ZpbGUKPiA+ICAgICBoYW5kbGVyCj4gPiAg
IEFDUEk6IHBsYXRmb3JtX3Byb2ZpbGU6IEFkZCBwbGF0Zm9ybSBoYW5kbGVyIGFyZ3VtZW50IHRv
Cj4gPiAgICAgcGxhdGZvcm1fcHJvZmlsZV9yZW1vdmUoKQo+ID4gICBBQ1BJOiBwbGF0Zm9ybV9w
cm9maWxlOiBQYXNzIHRoZSBwcm9maWxlIGhhbmRsZXIgaW50bwo+ID4gICAgIHBsYXRmb3JtX3By
b2ZpbGVfbm90aWZ5KCkKPiA+ICAgQUNQSTogcGxhdGZvcm1fcHJvZmlsZTogTW92ZSBzYW5pdHkg
Y2hlY2sgb3V0IG9mIHRoZSBtdXRleAo+ID4gICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBNb3Zl
IG1hdGNoaW5nIHN0cmluZyBmb3IgbmV3IHByb2ZpbGUgb3V0IG9mCj4gPiAgICAgbXV0ZXgKPiA+
ICAgQUNQSTogcGxhdGZvcm1fcHJvZmlsZTogVXNlIGd1YXJkKG11dGV4KSBmb3IgcmVnaXN0ZXIv
dW5yZWdpc3Rlcgo+ID4gICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBVc2UgYHNjb3BlZF9jb25k
X2d1YXJkYAo+ID4gICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBDcmVhdGUgY2xhc3MgZm9yIEFD
UEkgcGxhdGZvcm0gcHJvZmlsZQo+ID4gICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBBZGQgbmFt
ZSBhdHRyaWJ1dGUgdG8gY2xhc3MgaW50ZXJmYWNlCj4gPiAgIEFDUEk6IHBsYXRmb3JtX3Byb2Zp
bGU6IEFkZCBjaG9pY2VzIGF0dHJpYnV0ZSBmb3IgY2xhc3MgaW50ZXJmYWNlCj4gPiAgIEFDUEk6
IHBsYXRmb3JtX3Byb2ZpbGU6IEFkZCBwcm9maWxlIGF0dHJpYnV0ZSBmb3IgY2xhc3MgaW50ZXJm
YWNlCj4gPiAgIEFDUEk6IHBsYXRmb3JtX3Byb2ZpbGU6IE5vdGlmeSBjaGFuZ2UgZXZlbnRzIG9u
IHJlZ2lzdGVyIGFuZAo+ID4gICAgIHVucmVnaXN0ZXIKPiA+ICAgQUNQSTogcGxhdGZvcm1fcHJv
ZmlsZTogT25seSBzaG93IHByb2ZpbGVzIGNvbW1vbiBmb3IgYWxsIGhhbmRsZXJzCj4gPiAgIEFD
UEk6IHBsYXRmb3JtX3Byb2ZpbGU6IEFkZCBjb25jZXB0IG9mIGEgImN1c3RvbSIgcHJvZmlsZQo+
ID4gICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBNYWtlIHN1cmUgYWxsIHByb2ZpbGUgaGFuZGxl
cnMgYWdyZWUgb24KPiA+ICAgICBwcm9maWxlCj4gPiAgIEFDUEk6IHBsYXRmb3JtX3Byb2ZpbGU6
IENoZWNrIGFsbCBwcm9maWxlIGhhbmRsZXIgdG8gY2FsY3VsYXRlIG5leHQKPiA+ICAgQUNQSTog
cGxhdGZvcm1fcHJvZmlsZTogTm90aWZ5IGNsYXNzIGRldmljZSBmcm9tCj4gPiAgICAgcGxhdGZv
cm1fcHJvZmlsZV9ub3RpZnkoKQo+ID4gICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBBbGxvdyBt
dWx0aXBsZSBoYW5kbGVycwo+ID4gICBwbGF0Zm9ybS94ODYvYW1kOiBwbWY6IERyb3AgYWxsIHF1
aXJrcwo+ID4gICBEb2N1bWVudGF0aW9uOiBBZGQgZG9jdW1lbnRhdGlvbiBhYm91dCBjbGFzcyBp
bnRlcmZhY2UgZm9yIHBsYXRmb3JtCj4gPiAgICAgcHJvZmlsZXMKPiA+Cj4gPiAgLi4uL0FCSS90
ZXN0aW5nL3N5c2ZzLXBsYXRmb3JtX3Byb2ZpbGUgICAgICAgIHwgICA1ICsKPiA+ICAuLi4vdXNl
cnNwYWNlLWFwaS9zeXNmcy1wbGF0Zm9ybV9wcm9maWxlLnJzdCAgfCAgMzggKysKPiA+ICBkcml2
ZXJzL2FjcGkvcGxhdGZvcm1fcHJvZmlsZS5jICAgICAgICAgICAgICAgfCA1MzQgKysrKysrKysr
KysrKystLS0tCj4gPiAgLi4uL3N1cmZhY2Uvc3VyZmFjZV9wbGF0Zm9ybV9wcm9maWxlLmMgICAg
ICAgIHwgICA4ICstCj4gPiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvYWNlci13bWkuYyAgICAgICAg
ICAgICAgIHwgIDEyICstCj4gPiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvYW1kL3BtZi9NYWtlZmls
ZSAgICAgICAgIHwgICAyICstCj4gPiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvYW1kL3BtZi9jb3Jl
LmMgICAgICAgICAgIHwgICAxIC0KPiA+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9hbWQvcG1mL3Bt
Zi1xdWlya3MuYyAgICAgfCAgNjYgLS0tCj4gPiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvYW1kL3Bt
Zi9wbWYuaCAgICAgICAgICAgIHwgICAzIC0KPiA+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9hbWQv
cG1mL3Nwcy5jICAgICAgICAgICAgfCAgIDQgKy0KPiA+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9h
c3VzLXdtaS5jICAgICAgICAgICAgICAgfCAgIDggKy0KPiA+ICBkcml2ZXJzL3BsYXRmb3JtL3g4
Ni9kZWxsL2FsaWVud2FyZS13bWkuYyAgICAgfCAgIDggKy0KPiA+ICBkcml2ZXJzL3BsYXRmb3Jt
L3g4Ni9kZWxsL2RlbGwtcGMuYyAgICAgICAgICAgfCAgMzggKy0KPiA+ICBkcml2ZXJzL3BsYXRm
b3JtL3g4Ni9ocC9ocC13bWkuYyAgICAgICAgICAgICAgfCAgIDggKy0KPiA+ICBkcml2ZXJzL3Bs
YXRmb3JtL3g4Ni9pZGVhcGFkLWxhcHRvcC5jICAgICAgICAgfCAgIDYgKy0KPiA+ICAuLi4vcGxh
dGZvcm0veDg2L2luc3B1cl9wbGF0Zm9ybV9wcm9maWxlLmMgICAgfCAgIDcgKy0KPiA+ICBkcml2
ZXJzL3BsYXRmb3JtL3g4Ni90aGlua3BhZF9hY3BpLmMgICAgICAgICAgfCAgMTYgKy0KPiA+ICBp
bmNsdWRlL2xpbnV4L3BsYXRmb3JtX3Byb2ZpbGUuaCAgICAgICAgICAgICAgfCAgIDkgKy0KPiA+
ICAxOCBmaWxlcyBjaGFuZ2VkLCA1NTkgaW5zZXJ0aW9ucygrKSwgMjE0IGRlbGV0aW9ucygtKQo+
ID4gIGRlbGV0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9hbWQvcG1mL3BtZi1x
dWlya3MuYwo+Cj4gLS0KPiAgaS4KPgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNwaS1kZXZl
bEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlz
dHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
