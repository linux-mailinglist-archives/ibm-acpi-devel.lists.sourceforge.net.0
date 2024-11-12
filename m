Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 410D19C6265
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 12 Nov 2024 21:17:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tAxJt-0004Fo-SB;
	Tue, 12 Nov 2024 20:17:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rafael@kernel.org>) id 1tAxJt-0004FZ-0h
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 12 Nov 2024 20:17:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=NHHgJO8dddy8htfrgrzMyiyq7LfG5AT07ooXfDiO6mQ=; b=iePPY3FgeVbpgwMxSi8jIVPCd8
 o8HRvv7iDj2MGFWSIj7BzKUNcmqw4tHF45MrFX8Zz69RJT0kv3UlvaWPXga+YLsGcs8/r/rDjYLlX
 j/wcI0L7BDCOAac86LpV5KRoVKAFUj5Ao6Ed7tfgbqA63F0alsmp1Pu6WuqWw+eeuwBM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NHHgJO8dddy8htfrgrzMyiyq7LfG5AT07ooXfDiO6mQ=; b=f1KgIdmlG2ZfpyRZWA4xXlxRNJ
 UxYlCwXegWtyEqVSTfm935CM7pc1tNLQAP8a3w47rWhIaLAkeYfIG+GTqdBhKc1IG0em/C/SgqWMI
 Yo9x8t131+AEVMkYiCbEdCfIyZ/NTKHj8oCFWGsDoR5nHhQq3IAwCDH6QWkMnl9yi+3I=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tAxJs-0008Ln-4G for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 12 Nov 2024 20:17:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by dfw.source.kernel.org (Postfix) with ESMTP id 6D77B5C4DAF
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 12 Nov 2024 20:16:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77DAFC4CED6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 12 Nov 2024 20:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1731442609;
 bh=SS/rjAXPtHfu1bb9tzPEZAUs5OUMggHetyMYQXeht2Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=auQSndQ7pmBKqUbxPMPXjaW8kj7UDtrLfTzHIGvSe2+Pvc5qNErEzR7comGF6Hc3b
 c7hvZzDcSsmNDR6Js30Fx3G6ftnWCgVPIAAvNR+qL4ihQh3A4OAg0g3BLPDnXukg/4
 339k8V3MaAmcPf48pMy5L2HWma17f08kig5R49l1C2zItuXFkwHOoqKSYH+0k1ISTl
 vnFaCj+PPkje6in9gONW28TpLPPUtfNIuHipAPASy5twpvzXTpbEc9Qijoz9TR/Af8
 jMYeiYxP51ubQxovywHIMEsJdIqfbwkSKQDlx8uqaOeqo4YY7FHnhvvR1m6SHqBTsu
 KXf+kndc/oCWA==
Received: by mail-ot1-f44.google.com with SMTP id
 46e09a7af769-71a4210bcfeso1173658a34.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 12 Nov 2024 12:16:49 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCUz2q8Lk8fWbvuFHhiW1R/B1tZzcd9cmphEDgwViATtCZfYHmtIOSd11kJfcyqm2k6KmJEjZyfC2cOQtxxO6Q==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwpJ45G8axqb3FG68a3lKdo73UdGXQ/0kTsucSpZti2tYawa7xS
 mF8g8EviV2hFWEsBBVIiAraO5z3/t0G7ET7G4fA3BN0N/OXhFUCMJSurkQQVjswsiTP4HRGxMnf
 BwWEwINeSfT5c1AjGQip1YsWBp2s=
X-Google-Smtp-Source: AGHT+IH/JnJpO5YQfQKUNDwekjJUjo6v6sqC4pmMl3hn+ZnZhzkr5nmVDlDnDh840H/gbeKpvSjgdRrOVbFJlVofLXY=
X-Received: by 2002:a05:6830:6c0c:b0:710:fef4:3c92 with SMTP id
 46e09a7af769-71a1c288988mr17676536a34.21.1731442608496; Tue, 12 Nov 2024
 12:16:48 -0800 (PST)
MIME-Version: 1.0
References: <20241109044151.29804-1-mario.limonciello@amd.com>
In-Reply-To: <20241109044151.29804-1-mario.limonciello@amd.com>
Date: Tue, 12 Nov 2024 21:16:37 +0100
X-Gmail-Original-Message-ID: <CAJZ5v0gaNKKbf29WD5keQxJdgP93P_iWiQMwp7cOL9NCUumeZA@mail.gmail.com>
Message-ID: <CAJZ5v0gaNKKbf29WD5keQxJdgP93P_iWiQMwp7cOL9NCUumeZA@mail.gmail.com>
To: Mario Limonciello <mario.limonciello@amd.com>
X-Spam-Score: -5.3 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sat, Nov 9, 2024 at 5:42 AM Mario Limonciello <mario.limonciello@amd.com>
    wrote: > > Currently there are a number of ASUS products on the market that
    happen to > have ACPI objects for amd-pmf to [...] 
 
 Content analysis details:   (-5.3 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                            [139.178.84.217 listed in bl.score.senderscore.com]
  0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [139.178.84.217 listed in sa-accredit.habeas.com]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tAxJs-0008Ln-4G
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
 "Rafael J . Wysocki" <rafael@kernel.org>, Gergo Koteles <soyer@irl.hu>,
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

T24gU2F0LCBOb3YgOSwgMjAyNCBhdCA1OjQy4oCvQU0gTWFyaW8gTGltb25jaWVsbG8KPG1hcmlv
LmxpbW9uY2llbGxvQGFtZC5jb20+IHdyb3RlOgo+Cj4gQ3VycmVudGx5IHRoZXJlIGFyZSBhIG51
bWJlciBvZiBBU1VTIHByb2R1Y3RzIG9uIHRoZSBtYXJrZXQgdGhhdCBoYXBwZW4gdG8KPiBoYXZl
IEFDUEkgb2JqZWN0cyBmb3IgYW1kLXBtZiB0byBiaW5kIHRvIGFzIHdlbGwgYXMgYW4gQUNQSSBw
bGF0Zm9ybQo+IHByb2ZpbGUgcHJvdmlkZWQgYnkgYXN1cy13bWkuCj4KPiBUaGUgQUNQSSBwbGF0
Zm9ybSBwcm9maWxlIHN1cHBvcnQgY3JlYXRlZCBieSBhbWQtcG1mIG9uIHRoZXNlIEFTVVMKPiBw
cm9kdWN0cyBpcyAiRnVuY3Rpb24gOSIgd2hpY2ggaXMgc3BlY2lmaWNhbGx5IGZvciAiQklPUyBv
ciBFQwo+IG5vdGlmaWNhdGlvbiIgb2YgcG93ZXIgc2xpZGVyIHBvc2l0aW9uLiBUaGlzIGZlYXR1
cmUgaXMgYWN0aXZlbHkgdXNlZAo+IGJ5IHNvbWUgZGVzaWducyBzdWNoIGFzIEZyYW1ld29yayAx
MyBhbmQgRnJhbWV3b3JrIDE2Lgo+Cj4gT24gdGhlc2UgQVNVUyBkZXNpZ25zIHdlIGtlZXAgb24g
cXVpcmtpbmcgbW9yZSBhbmQgbW9yZSBvZiB0aGVtIHRvIHR1cm4KPiBvZmYgdGhpcyBub3RpZmlj
YXRpb24gc28gdGhhdCBhc3VzLXdtaSBjYW4gYmluZC4KPgo+IFRoaXMgaG93ZXZlciBpc24ndCBo
b3cgV2luZG93cyB3b3Jrcy4gICJNdWx0aXBsZSIgdGhpbmdzIGFyZSBub3RpZmllZCBmb3IKPiB0
aGUgcG93ZXIgc2xpZGVyIHBvc2l0aW9uLiBUaGlzIHNlcmllcyBhZGp1c3RzIExpbnV4IHRvIGJl
aGF2ZSBzaW1pbGFybHkuCj4KPiBNdWx0aXBsZSBkcml2ZXJzIGNhbiBub3cgcmVnaXN0ZXIgYW4g
QUNQSSBwbGF0Zm9ybSBwcm9maWxlIGFuZCB3aWxsIHJlYWN0Cj4gdG8gc2V0IHJlcXVlc3RzLgo+
Cj4gVG8gYXZvaWQgY2hhb3MsIG9ubHkgcG9zaXRpb25zIHRoYXQgYXJlIGNvbW1vbiB0byBib3Ro
IGRyaXZlcnMgYXJlCj4gYWNjZXB0ZWQgd2hlbiB0aGUgbGVnYWN5IC9zeXMvZmlybXdhcmUvYWNw
aS9wbGF0Zm9ybV9wcm9maWxlIGludGVyZmFjZQo+IGlzIHVzZWQuCj4KPiBUaGlzIHNlcmllcyBh
bHNvIGFkZHMgYSBuZXcgY29uY2VwdCBvZiBhICJjdXN0b20iIHByb2ZpbGUuICBUaGlzIGFsbG93
cwo+IHVzZXJzcGFjZSB0byBkaXNjb3ZlciB0aGF0IHRoZXJlIGFyZSBtdWx0aXBsZSBkcml2ZXIg
aGFuZGxlcnMgdGhhdCBhcmUKPiBjb25maWd1cmVkIGRpZmZlcmVudGx5Lgo+Cj4gVGhpcyBzZXJp
ZXMgYWxzbyBhbGxvd3MgZHJvcHBpbmcgYWxsIG9mIHRoZSBQTUYgcXVpcmtzIGZyb20gYW1kLXBt
Zi4KPgo+IC0tLQo+IHY2Ogo+ICAqIEFkZCBwYXRjaCBkZXYgcGF0Y2ggYnV0IGRvbid0IG1ha2Ug
bWFuZGF0b3J5CgpQcm9iYWJseSBhIHR5cG8/CgpXaGljaCBwYXRjaCBpcyBpdCwgQlRXPwoKSW4g
YW55IGNhc2UsIGlmIHRoZSBtZXJnZSB3aW5kb3cgZm9yIDYuMTMgc3RhcnRzIG9uIHRoZSB1cGNv
bWluZwp3ZWVrZW5kLCB3aGljaCBpcyBsaWtlbHkgdG8gaGFwcGVuIEFGQUlDUywgSSdsbCBkZWZl
ciBhcHBseWluZyB0aGlzCnNlcmllcyB1bnRpbCA2LjEzLXJjMSBpcyBvdXQuCgpJdCdzIGxhcmdl
ciBhbmQgaXQncyBiZWVuIGNoYW5naW5nIHRvbyBvZnRlbiByZWNlbnRseSBmb3IgbWUgdG8gY2F0
Y2gKdXAgYW5kIEknbGwgYmUgbXVjaCBtb3JlIGNvbWZvcnRhYmxlIGlmIGl0IHNwZW5kcyBzb21l
IHRpbWUgaW4KbGludXgtbmV4dCBiZWZvcmUgZ29pbmcgaW50byB0aGUgbWFpbmxpbmUgKGFuZCBu
b3QgZHVyaW5nIGEgbWVyZ2UKd2luZG93IGZvciB0aGF0IG1hdHRlcikuCgo+ICAqIFNlZSBvdGhl
ciBwYXRjaGVzIGNoYW5nZWxvZ3MgZm9yIGluZGl2aWR1YWxpemVkIGNoYW5nZXMKPgo+IE1hcmlv
IExpbW9uY2llbGxvICgyMik6Cj4gICBBQ1BJOiBwbGF0Zm9ybS1wcm9maWxlOiBBZGQgYSBuYW1l
IG1lbWJlciB0byBoYW5kbGVycwo+ICAgcGxhdGZvcm0veDg2L2RlbGw6IGRlbGwtcGM6IENyZWF0
ZSBwbGF0Zm9ybSBkZXZpY2UKPiAgIEFDUEk6IHBsYXRmb3JtX3Byb2ZpbGU6IEFkZCBkZXZpY2Ug
cG9pbnRlciBpbnRvIHBsYXRmb3JtIHByb2ZpbGUKPiAgICAgaGFuZGxlcgo+ICAgQUNQSTogcGxh
dGZvcm1fcHJvZmlsZTogQWRkIHBsYXRmb3JtIGhhbmRsZXIgYXJndW1lbnQgdG8KPiAgICAgcGxh
dGZvcm1fcHJvZmlsZV9yZW1vdmUoKQo+ICAgQUNQSTogcGxhdGZvcm1fcHJvZmlsZTogUGFzcyB0
aGUgcHJvZmlsZSBoYW5kbGVyIGludG8KPiAgICAgcGxhdGZvcm1fcHJvZmlsZV9ub3RpZnkoKQo+
ICAgQUNQSTogcGxhdGZvcm1fcHJvZmlsZTogTW92ZSBzYW5pdHkgY2hlY2sgb3V0IG9mIHRoZSBt
dXRleAo+ICAgQUNQSTogcGxhdGZvcm1fcHJvZmlsZTogTW92ZSBtYXRjaGluZyBzdHJpbmcgZm9y
IG5ldyBwcm9maWxlIG91dCBvZgo+ICAgICBtdXRleAo+ICAgQUNQSTogcGxhdGZvcm1fcHJvZmls
ZTogVXNlIGd1YXJkKG11dGV4KSBmb3IgcmVnaXN0ZXIvdW5yZWdpc3Rlcgo+ICAgQUNQSTogcGxh
dGZvcm1fcHJvZmlsZTogVXNlIGBzY29wZWRfY29uZF9ndWFyZGAKPiAgIEFDUEk6IHBsYXRmb3Jt
X3Byb2ZpbGU6IENyZWF0ZSBjbGFzcyBmb3IgQUNQSSBwbGF0Zm9ybSBwcm9maWxlCj4gICBBQ1BJ
OiBwbGF0Zm9ybV9wcm9maWxlOiBBZGQgbmFtZSBhdHRyaWJ1dGUgdG8gY2xhc3MgaW50ZXJmYWNl
Cj4gICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBBZGQgY2hvaWNlcyBhdHRyaWJ1dGUgZm9yIGNs
YXNzIGludGVyZmFjZQo+ICAgQUNQSTogcGxhdGZvcm1fcHJvZmlsZTogQWRkIHByb2ZpbGUgYXR0
cmlidXRlIGZvciBjbGFzcyBpbnRlcmZhY2UKPiAgIEFDUEk6IHBsYXRmb3JtX3Byb2ZpbGU6IE5v
dGlmeSBjaGFuZ2UgZXZlbnRzIG9uIHJlZ2lzdGVyIGFuZAo+ICAgICB1bnJlZ2lzdGVyCj4gICBB
Q1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBPbmx5IHNob3cgcHJvZmlsZXMgY29tbW9uIGZvciBhbGwg
aGFuZGxlcnMKPiAgIEFDUEk6IHBsYXRmb3JtX3Byb2ZpbGU6IEFkZCBjb25jZXB0IG9mIGEgImN1
c3RvbSIgcHJvZmlsZQo+ICAgQUNQSTogcGxhdGZvcm1fcHJvZmlsZTogTWFrZSBzdXJlIGFsbCBw
cm9maWxlIGhhbmRsZXJzIGFncmVlIG9uCj4gICAgIHByb2ZpbGUKPiAgIEFDUEk6IHBsYXRmb3Jt
X3Byb2ZpbGU6IENoZWNrIGFsbCBwcm9maWxlIGhhbmRsZXIgdG8gY2FsY3VsYXRlIG5leHQKPiAg
IEFDUEk6IHBsYXRmb3JtX3Byb2ZpbGU6IE5vdGlmeSBjbGFzcyBkZXZpY2UgZnJvbQo+ICAgICBw
bGF0Zm9ybV9wcm9maWxlX25vdGlmeSgpCj4gICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBBbGxv
dyBtdWx0aXBsZSBoYW5kbGVycwo+ICAgcGxhdGZvcm0veDg2L2FtZDogcG1mOiBEcm9wIGFsbCBx
dWlya3MKPiAgIERvY3VtZW50YXRpb246IEFkZCBkb2N1bWVudGF0aW9uIGFib3V0IGNsYXNzIGlu
dGVyZmFjZSBmb3IgcGxhdGZvcm0KPiAgICAgcHJvZmlsZXMKPgo+ICAuLi4vQUJJL3Rlc3Rpbmcv
c3lzZnMtcGxhdGZvcm1fcHJvZmlsZSAgICAgICAgfCAgIDUgKwo+ICAuLi4vdXNlcnNwYWNlLWFw
aS9zeXNmcy1wbGF0Zm9ybV9wcm9maWxlLnJzdCAgfCAgMjggKwo+ICBkcml2ZXJzL2FjcGkvcGxh
dGZvcm1fcHJvZmlsZS5jICAgICAgICAgICAgICAgfCA1MzcgKysrKysrKysrKysrKystLS0tCj4g
IC4uLi9zdXJmYWNlL3N1cmZhY2VfcGxhdGZvcm1fcHJvZmlsZS5jICAgICAgICB8ICAgOCArLQo+
ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9hY2VyLXdtaS5jICAgICAgICAgICAgICAgfCAgMTIgKy0K
PiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvYW1kL3BtZi9NYWtlZmlsZSAgICAgICAgIHwgICAyICst
Cj4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L2FtZC9wbWYvY29yZS5jICAgICAgICAgICB8ICAgMSAt
Cj4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L2FtZC9wbWYvcG1mLXF1aXJrcy5jICAgICB8ICA2NiAt
LS0KPiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvYW1kL3BtZi9wbWYuaCAgICAgICAgICAgIHwgICAz
IC0KPiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvYW1kL3BtZi9zcHMuYyAgICAgICAgICAgIHwgICA0
ICstCj4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L2FzdXMtd21pLmMgICAgICAgICAgICAgICB8ICAx
MCArLQo+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9kZWxsL2FsaWVud2FyZS13bWkuYyAgICAgfCAg
IDggKy0KPiAgZHJpdmVycy9wbGF0Zm9ybS94ODYvZGVsbC9kZWxsLXBjLmMgICAgICAgICAgIHwg
IDM2ICstCj4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L2hwL2hwLXdtaS5jICAgICAgICAgICAgICB8
ICAgOCArLQo+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9pZGVhcGFkLWxhcHRvcC5jICAgICAgICAg
fCAgIDYgKy0KPiAgLi4uL3BsYXRmb3JtL3g4Ni9pbnNwdXJfcGxhdGZvcm1fcHJvZmlsZS5jICAg
IHwgICA3ICstCj4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYyAgICAgICAg
ICB8ICAxNiArLQo+ICBpbmNsdWRlL2xpbnV4L3BsYXRmb3JtX3Byb2ZpbGUuaCAgICAgICAgICAg
ICAgfCAgIDkgKy0KPiAgMTggZmlsZXMgY2hhbmdlZCwgNTUzIGluc2VydGlvbnMoKyksIDIxMyBk
ZWxldGlvbnMoLSkKPiAgZGVsZXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvcGxhdGZvcm0veDg2L2Ft
ZC9wbWYvcG1mLXF1aXJrcy5jCj4KPgo+IGJhc2UtY29tbWl0OiBkNjhjYjYwMjMzNTZhZjNiZDMx
OTM5ODNhZDRlYzAzOTU0YTBiM2UyCj4gLS0KPiAyLjQzLjAKPgoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlz
dAppYm0tYWNwaS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3Vy
Y2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
