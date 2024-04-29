Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 898948B5457
	for <lists+ibm-acpi-devel@lfdr.de>; Mon, 29 Apr 2024 11:35:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1s1NP6-0005oR-Is;
	Mon, 29 Apr 2024 09:34:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hdegoede@redhat.com>) id 1s1NP5-0005oL-0d
 for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 09:34:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=meycXuX8e7UgXDDzdpk2z7uxIbEyQo1uGtZkZvT27vY=; b=VJO/28l35mF+kVOkQAWsLdaOnf
 qzfITFk/220QM0eC3nEY9Bhq3++WS8s/D+X6zNBcXg2P4ACStigvTbPRsjjI05wZXcrsns9vbOmXp
 QNQRxNE33+r0oaKCFPQVTGIdhK75dYeHSsiMJQ3s8FJjIa0Lp88/YUWsDWkD52p8JSfY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=meycXuX8e7UgXDDzdpk2z7uxIbEyQo1uGtZkZvT27vY=; b=WbyBzjdBgMMk6PaABd0hL/JFqJ
 GHIU94uOpmiLP0/VkZxCW1vjgL8KUR2Hhbv8C9ZIg8M0wWH2sf/qQXL+VtBErUFmMEtl/JMpbtXji
 t1GZQuiH8pS413b+cK8swns4tr6FUUNdyuQBLoNMlvQNOu/42MwD1CdqECHS0sVmjhs8=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1s1NP3-0007AM-TS for ibm-acpi-devel@lists.sourceforge.net;
 Mon, 29 Apr 2024 09:34:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1714383258;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=meycXuX8e7UgXDDzdpk2z7uxIbEyQo1uGtZkZvT27vY=;
 b=EtR3zGfgrKA8evpyR7oN7kcdB7wZfVuQKS6wh2jkV4Qm7+c9ggXMQyYymT46So5b2UETxL
 t/nw7613tgimDNkcBPPF5t6LATKzn9h12/3C2giiefuPRSto6rZDF2DZO5y+ENAU0rQ4qH
 CiPSik0nu5EiABXBNj3dAaHxlaelyf0=
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com
 [209.85.218.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-214-eAd_Tt_SNN-54vTO-9Fahw-1; Mon, 29 Apr 2024 05:34:17 -0400
X-MC-Unique: eAd_Tt_SNN-54vTO-9Fahw-1
Received: by mail-ej1-f69.google.com with SMTP id
 a640c23a62f3a-a5741ee352bso232729866b.1
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Mon, 29 Apr 2024 02:34:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714383256; x=1714988056;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=meycXuX8e7UgXDDzdpk2z7uxIbEyQo1uGtZkZvT27vY=;
 b=mOpdBtFDEFdH2xDETq/nr+lTSkiAbMMTIV++Y564U213X/5HWe9TxRtykCVszaj67o
 /D1bAExxsE4Tga819ToTQ0zddpggwDHarc+X+ehbDRaQbU69Pdzxt3MlbrnJ7+xOEgGB
 cdvFL6BvTLrmZ7PbxJdvyVpnPfWtc11uBi7tRLG6Z6Jy9oaQsfJBjHuIdaz8a/aH9Hqe
 OU8Kl4Ev1lPqEpyN6KzL3JxW7N1hJDOvJR7jo67NuleCjiapPG5dVdKxVV1dj2HLr1Pi
 sqt2g/8sp5l5m/TpITqZHRNPLWY6Drp+rCIwuDGsFzXCTaBc0jjqW2Z3zuhYtUs1XeMh
 0fhQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUOAZe5Ma0W2ZGmGJcxQ7nstqGAYIMUJsMqZ81StNcZkUivHSeqPdux4RHDL2mRhqquFOHmCqeVoqIjQlyxe0W7SY9+pwcPkhvNbyMS/qzoHgEoRAk=
X-Gm-Message-State: AOJu0Yz3dFuBea8kaGPVHs4MnEcCiZOFxRkNcNm6OF/F644sKIQy0WNk
 NUDka23Q3tcxH/Q+Fy7d+86VWSQb/lm4tm3DzgoSJHpFA2oylt3Tj85Z8gCiZqLiL6A8TUHvtFU
 tws0kzaKKhKE0iDZ5gTH3SteI4x3ZaDdYrbGts1Ggg2eLoI96QDp4PSQ4qFWwUl0pkWtNVCcA
X-Received: by 2002:a17:906:3a85:b0:a55:b272:ea02 with SMTP id
 y5-20020a1709063a8500b00a55b272ea02mr5792054ejd.75.1714383255901; 
 Mon, 29 Apr 2024 02:34:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGqN/9IkuYOVYfHTH3NBJCK5ck7Pl+9M6Kqc/Z+v9QNl2sCdU5MJ29JHL0EIlO1K7jyR+0ipQ==
X-Received: by 2002:a17:906:3a85:b0:a55:b272:ea02 with SMTP id
 y5-20020a1709063a8500b00a55b272ea02mr5792036ejd.75.1714383255541; 
 Mon, 29 Apr 2024 02:34:15 -0700 (PDT)
Received: from [10.40.98.157] ([78.108.130.194])
 by smtp.gmail.com with ESMTPSA id
 d18-20020a1709061f5200b00a587831c09fsm7711900ejk.186.2024.04.29.02.34.14
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 29 Apr 2024 02:34:15 -0700 (PDT)
Message-ID: <4ea9a2ae-78d3-4ae1-b63a-1b8ac50ce532@redhat.com>
Date: Mon, 29 Apr 2024 11:34:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
References: <20240424122834.19801-1-hdegoede@redhat.com>
 <20240424122834.19801-5-hdegoede@redhat.com>
 <a8743812-0df6-e916-1272-657bbfa39892@linux.intel.com>
From: Hans de Goede <hdegoede@redhat.com>
In-Reply-To: <a8743812-0df6-e916-1272-657bbfa39892@linux.intel.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -1.2 (-)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 4/25/24 9:13 AM, Ilpo Järvinen wrote: > On Wed, 24
    Apr 2024, Hans de Goede wrote: > >> Setting ignore_acpi_ev to true has the
    same result as setting >> send_acpi_ev to false, so there is no need t [...]
    
 
 Content analysis details:   (-1.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
                             [170.10.133.124 listed in wl.mailspike.net]
  0.0 SPF_NONE               SPF: sender does not publish an SPF Record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -1.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1s1NP3-0007AM-TS
Subject: Re: [ibm-acpi-devel] [PATCH v2 04/24] platform/x86: thinkpad_acpi:
 Drop ignore_acpi_ev
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
 Nitin Joshi <njoshi1@lenovo.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiA0LzI1LzI0IDk6MTMgQU0sIElscG8gSsOkcnZpbmVuIHdyb3RlOgo+IE9uIFdlZCwg
MjQgQXByIDIwMjQsIEhhbnMgZGUgR29lZGUgd3JvdGU6Cj4gCj4+IFNldHRpbmcgaWdub3JlX2Fj
cGlfZXYgdG8gdHJ1ZSBoYXMgdGhlIHNhbWUgcmVzdWx0IGFzIHNldHRpbmcKPj4gc2VuZF9hY3Bp
X2V2IHRvIGZhbHNlLCBzbyB0aGVyZSBpcyBubyBuZWVkIHRvIGhhdmUgYm90aC4KPj4KPj4gRHJv
cCBpZ25vcmVfYWNwaV9ldi4KPj4KPj4gVGVzdGVkLWJ5OiBNYXJrIFBlYXJzb24gPG1wZWFyc29u
LWxlbm92b0BzcXVlYmIuY2E+Cj4+IFNpZ25lZC1vZmYtYnk6IEhhbnMgZGUgR29lZGUgPGhkZWdv
ZWRlQHJlZGhhdC5jb20+Cj4gCj4gTm90IGRpcmVjdGx5IHJlbGF0ZWQgdG8gdGhpcyBwYXRjaCBi
dXQgd2hpbGUgcmV2aWV3aW5nIGl0IEkgbm90aWNlZCAKPiB0aGlzIHdoaWNoIHNob3VsZCBiZSBj
b252ZXJ0ZWQgdG8gZmFsc2U6Cj4gCj4gCXNlbmRfYWNwaV9ldiA9IDA7CgpSaWdodCBJIG5vdGlj
ZWQgdGhhdCB0b28sIGJ1dCBJIGRlY2lkZWQgaXQgd291bGQgYmUgYmVzdCB0byBmaXggdGhhdApp
biBhIHNlcGFyYXRlIHBhdGNoIGFuZCB0aGVuIGZvcmdvdCBhYm91dCBpdC4KCkxldCBtZSBzZW5k
IGEgcGF0Y2ggdG8gYWRkcmVzcyB0aGlzIHJpZ2h0IGF3YXkuCgpSZWdhcmRzLAoKSGFucwoKCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwppYm0tYWNwaS1k
ZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0
dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xpc3RpbmZvL2libS1hY3BpLWRldmVs
Cg==
