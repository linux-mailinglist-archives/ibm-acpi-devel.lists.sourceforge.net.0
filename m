Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DA8418AE914
	for <lists+ibm-acpi-devel@lfdr.de>; Tue, 23 Apr 2024 16:07:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1rzGnO-0007P3-LJ;
	Tue, 23 Apr 2024 14:06:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1rzGnL-0007Ok-IT
 for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 23 Apr 2024 14:06:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=k/l+y+K2e4ezW/S901NyeR+VzB703ZqkglgFfVI/Jf0=; b=XlMODpNFExE7hfg3UCq+rss2U/
 QRU048cCjE8kvZSfpRfPcssIwLnS7bTxAm7Kqe3hK9wvu/FRwneZJTA5OD8FONbTapXM2Qe69C6Sv
 6xjbpSL5TJzlv9rkxl7usrxEC4y9EngZwcGu5nkreGSMtSXpNLQHneL+kHeGqJdS89mg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=k/l+y+K2e4ezW/S901NyeR+VzB703ZqkglgFfVI/Jf0=; b=HUDy/tpiHlfIsTqV1/y/W2GPDI
 8WPXtedrhgcXzAFK1Y7UlQJkW7iXvIA1yf2ukgL1zRy4rwgA7x12Bm8u8BcJZP67UZDnjrywj+ljd
 GBFYy1zlcMOjar66D1E/p+/LgMbfaFIK6xQileG0YQmLJgRq83SbGlgw0aHn+CWPfaZo=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rzGnI-0000DY-4g for ibm-acpi-devel@lists.sourceforge.net;
 Tue, 23 Apr 2024 14:06:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1713881197;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=k/l+y+K2e4ezW/S901NyeR+VzB703ZqkglgFfVI/Jf0=;
 b=fT9ocq8lcUzt45JpQ/o7pgxh1PGNpNQko+EFHC8abhKMBibg8kzn0ogWtNtbrTrsxkblaB
 bCkUdt02VG1n2ZCSUmXqlGT0mnB+FEYWLYC/bqtZREN5bqutmdqTtrMaJ598ksS6HpiHez
 FTfKcDF+/dstPMH9r6seSvtrt5U8niw=
Received: from mail-lj1-f199.google.com (mail-lj1-f199.google.com
 [209.85.208.199]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-549-z1-xxuDAMVibFTGpKCmEoA-1; Tue, 23 Apr 2024 10:06:35 -0400
X-MC-Unique: z1-xxuDAMVibFTGpKCmEoA-1
Received: by mail-lj1-f199.google.com with SMTP id
 38308e7fff4ca-2d87d146022so49367171fa.3
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Tue, 23 Apr 2024 07:06:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1713881194; x=1714485994;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=k/l+y+K2e4ezW/S901NyeR+VzB703ZqkglgFfVI/Jf0=;
 b=ppfMDtIrVRIBINkuE90ND6IXwgWpJM/PUDq0gBu8PVN32WZ6onQ8wkekNW47tHd366
 8SG6EMccDAXb2vDqDWkXuzNrPZgf82Adtkehmu4bAbRRAsxlpfrYMoVT6mjPvNcU27/5
 9P6ACAEiuovOGtIox7hSclTojuM0tdIR8qV79b+Y0yeAL9zvL4ZBSKYSvi8Fv7QRq5L7
 WpJ+v7bc7/5lSO3tAYhyag5mm2SQwbZHM/jm7+FDrSElxEVQMVA0FeehOYal2zaMgomw
 6qgveipo/aRHAc1rg82sFcRpasrjmnT/kbdqwg346yf79HKOijL8OO2EC5y4xpPSt6ZH
 Izyg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWtnRwP5II/JdCm52VrUFgQpc65BUQ3nXTjoZzcQ1bHFCWFYkX7wwLEqqERQQcdKJvlZNa4G4fTMQNJM03KSQtTPpby6B+V9Wf6XxUMw3tslC1aZiU=
X-Gm-Message-State: AOJu0Yxh9gnXWW+sWO/4QVxrJIe9RSmj8I7m5rvdl5IWUyNIlBVVl6z9
 Qhl8etcuN7VRqVk0K/RkBEfSIt7WZ7rJO4W2UFDkjXhXqFt9Ptwxxcvc7EE34EtfylpND9oWtI6
 q83jkOFfhvENQssFjJPjlXnMz62k3BZhdmdBGdXXZ2Q184XDgag6P4usl8YkS/m9FJv1AEF5k
X-Received: by 2002:a2e:9b16:0:b0:2da:c37f:655e with SMTP id
 u22-20020a2e9b16000000b002dac37f655emr9224910lji.16.1713881194365; 
 Tue, 23 Apr 2024 07:06:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGU8R/1Q57Fv9g+4YH6U20goJVoKDtjYk7G+XMm3yCE7culi+P74zMjVzfgCbcxEx0d/0Ng+A==
X-Received: by 2002:a2e:9b16:0:b0:2da:c37f:655e with SMTP id
 u22-20020a2e9b16000000b002dac37f655emr9224891lji.16.1713881193940; 
 Tue, 23 Apr 2024 07:06:33 -0700 (PDT)
Received: from ?IPV6:2001:1c00:c32:7800:5bfa:a036:83f0:f9ec?
 (2001-1c00-0c32-7800-5bfa-a036-83f0-f9ec.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c32:7800:5bfa:a036:83f0:f9ec])
 by smtp.gmail.com with ESMTPSA id
 q23-20020a50c357000000b0056e672573e5sm6998546edb.88.2024.04.23.07.06.31
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 23 Apr 2024 07:06:32 -0700 (PDT)
Message-ID: <451da24a-4d89-4af2-9c27-22e55f4016fe@redhat.com>
Date: Tue, 23 Apr 2024 16:06:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20240421154520.37089-1-hdegoede@redhat.com>
 <20240421154520.37089-18-hdegoede@redhat.com>
 <CAHp75VeJaisUOt8DmVyNyEuHypkXYqBs4j3y+8EcinHt0L=TRQ@mail.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <CAHp75VeJaisUOt8DmVyNyEuHypkXYqBs4j3y+8EcinHt0L=TRQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US, nl
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 4/21/24 9:11 PM, Andy Shevchenko wrote: > On Sun, Apr
    21, 2024 at 6:45 PM Hans de Goede <hdegoede@redhat.com> wrote: >> >> Change
    the default keymap to report the correct keycodes for the volume [...] 
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [170.10.129.124 listed in wl.mailspike.net]
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1rzGnI-0000DY-4g
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

SGksCgpPbiA0LzIxLzI0IDk6MTEgUE0sIEFuZHkgU2hldmNoZW5rbyB3cm90ZToKPiBPbiBTdW4s
IEFwciAyMSwgMjAyNCBhdCA2OjQ14oCvUE0gSGFucyBkZSBHb2VkZSA8aGRlZ29lZGVAcmVkaGF0
LmNvbT4gd3JvdGU6Cj4+Cj4+IENoYW5nZSB0aGUgZGVmYXVsdCBrZXltYXAgdG8gcmVwb3J0IHRo
ZSBjb3JyZWN0IGtleWNvZGVzIGZvciB0aGUgdm9sdW1lIGFuZAo+PiBicmlnaHRuZXNzIGtleXMu
IFJlcG9ydGluZyBrZXkgZXZlbnRzIGZvciB0aGVzZSBpcyBhbHJlYWR5IGZpbHRlcmVkIG91dCBi
eQo+PiB0aGUgaG90a2V5X3Jlc2VydmVkX21hc2sgd2hpY2ggbWFza3MgdGhlc2Uga2V5cyBvdXQg
b2YgaG90a2V5X3VzZXJfbWFzayBhdAo+PiBpbml0aWFsaXphdGlvbiB0aW1lLCBzbyB0aGVyZSBp
cyBubyBuZWVkIHRvIGFsc28gbWFwIHRoZW0gdG8gS0VZX1JFU0VSVkVELgo+Pgo+PiBUaGlzIGF2
b2lkcyB1c2Vycywgd2hvIHdhbnQgdGhlc2UgdG8gYmUgcmVwb3J0ZWQsIGhhdmluZyB0byBhbHNv
IHJlbWFwCj4+IHRoZSBrZXljb2RlcyBvbiB0b3Agb2Ygb3ZlcnJpZGluZyBob3RrZXlfdXNlcl9t
YXNrIHRvIHJlcG9ydCB0aGVzZQo+PiBhbmQgTGludXggdXNlcnNwYWNlIGhhcyBhbHJlYWR5IGJl
ZW4gb3ZlcnJpZGRpbmcgdGhlIEtFWV9SRVNFUlZFRCBtYXBwaW5ncwo+IAo+IG92ZXJyaWRpbmcK
CkFjaywgZml4ZWQgZm9yIHYyLgoKPiAKPj4gd2l0aCB0aGUgY29ycmVjdCBrZXljb2RlcyB0aHJv
dWdoIHVkZXYvaHdkYi82MC1rZXlib2FyZC5od2RiIGZvciB5ZWFycyBub3cuCj4+Cj4+IEFsc28g
ZHJvcCBob3RrZXlfdW5tYXAoKSBpdCB3YXMgb25seSB1c2VkIHRvIGR5bmFtaWNhbGx5IG1hcCB0
aGUgYnJpZ2h0bmVzcwo+PiBrZXlzIHRvIEtFWV9SRVNFUlZFRCBhbmQgYWZ0ZXIgcmVtb3Zpbmcg
dGhhdCBpdCBoYXMgbm8gcmVtYWluaW5nIHVzZXJzLgo+IAo+IC4uLgo+IAo+PiArICAgICAgICAg
ICAgICAgLyogYnJpZ2h0bmVzczogZmlybXdhcmUgYWx3YXlzIHJlYWN0cyB0byB0aGVtLgo+PiAr
ICAgICAgICAgICAgICAgICogU3VwcHJlc3NlZCBieSBkZWZhdWx0IHRocm91Z2ggaG90a2V5X3Jl
c2VydmVkX21hc2suCj4+ICsgICAgICAgICAgICAgICAgKi8KPiAKPj4gKyAgICAgICAgICAgICAg
IC8qIFRoaW5rbGlnaHQ6IGZpcm13YXJlIGFsd2F5cyByZWFjdCB0byBpdC4KPj4gKyAgICAgICAg
ICAgICAgICAqIFN1cHByZXNzZWQgYnkgZGVmYXVsdCB0aHJvdWdoIGhvdGtleV9yZXNlcnZlZF9t
YXNrLgo+PiArICAgICAgICAgICAgICAgICovCj4gCj4+ICAgICAgICAgICAgICAgICAvKiBWb2x1
bWU6IGZpcm13YXJlIGFsd2F5cyByZWFjdCB0byBpdCBhbmQgcmVwcm9ncmFtcwo+PiAgICAgICAg
ICAgICAgICAgICogdGhlIGJ1aWx0LWluICpleHRyYSogbWl4ZXIuICBOZXZlciBtYXAgaXQgdG8g
Y29udHJvbAo+PiArICAgICAgICAgICAgICAgICogYW5vdGhlciBtaXhlciBieSBkZWZhdWx0Lgo+
PiArICAgICAgICAgICAgICAgICogU3VwcHJlc3NlZCBieSBkZWZhdWx0IHRocm91Z2ggaG90a2V5
X3Jlc2VydmVkX21hc2suCj4+ICsgICAgICAgICAgICAgICAgKi8KPiAKPiBIbW0uLi4gV2hpbGUg
YXQgaXQsIGNhbiB3ZSByZWN0aWZ5IHRoZSBibG9jayBjb21tZW50cyB0byBmb2xsb3cgdGhlCj4g
c3RhbmRhcmQgc3R5bGU/Cj4gKEkgbWVhbnQgdGhvc2Ugd2hpY2ggeW91IGFyZSB0b3VjaGluZyBo
ZXJlLikKCkFjaywgYnV0IHRoZXNlIGdldCBtb3ZlZCBhcm91bmQgaW46CgpbUEFUQ0ggMTkvMjRd
IHBsYXRmb3JtL3g4NjogdGhpbmtwYWRfYWNwaTogU3dpdGNoIHRvIHVzaW5nIHNwYXJzZS1rZXlt
YXAgaGVscGVycwoKU28gdG8gc2F2ZSBteSBzZWxmIHNvbWUgcmViYXNpbmcgcGFpbiBJIHdpbGwg
Zml4IHVwIHRoZSBibG9jayBjb21tZW50IHN0eWxlCnRoZXJlIGluc3RlYWQgaW4gdjIgb2YgdGhl
IHNlcmllcyA6KQoKUmVnYXJkcywKCkhhbnMKCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmlibS1hY3BpLWRldmVsIG1haWxpbmcgbGlzdAppYm0tYWNw
aS1kZXZlbEBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5u
ZXQvbGlzdHMvbGlzdGluZm8vaWJtLWFjcGktZGV2ZWwK
