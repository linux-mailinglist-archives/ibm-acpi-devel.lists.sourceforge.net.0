Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0950234337F
	for <lists+ibm-acpi-devel@lfdr.de>; Sun, 21 Mar 2021 17:38:49 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1lO15Z-0007mA-Gq; Sun, 21 Mar 2021 16:38:05 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <hdegoede@redhat.com>) id 1lO15Y-0007m3-4r
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 21 Mar 2021 16:38:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=qNSMOQVMtFLXfRA64H5U21/1b4tMY96NTROWskuxqec=; b=F84o2qcBxykyyceh++5e3//H6Y
 7aCllxBXB65y5utL9LZwAEQcGFO7K1+rDBP7N5qml3wHyPzyng1U/QOmmPE5lBAc1wjstdPFZOLPN
 Mzfb2aGyHTxc30Nbjef5fzfaQk4YQMa0YPkp031u2dLZ1LMgI8HCVBmyHgXqETYPylVc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:
 Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=qNSMOQVMtFLXfRA64H5U21/1b4tMY96NTROWskuxqec=; b=Iy308dtJ9+Kpdfh7Zir8sD+be4
 /QFFz9HFk2wtXdHDg1pQazDxQNjVWbBowFE5qwhpy4775oQDRRsSEDF82A69z2NYjxoZq5mWlCv5N
 +FHJGnevxWCsCP4dUyODnaTQvohnGXI4EnZmFQRg793Xtebu4uDghIHwPbafyVeNHaug=;
Received: from [170.10.133.124] (helo=us-smtp-delivery-124.mimecast.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lO15V-0002Do-8P
 for ibm-acpi-devel@lists.sourceforge.net; Sun, 21 Mar 2021 16:38:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1616344665;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=qNSMOQVMtFLXfRA64H5U21/1b4tMY96NTROWskuxqec=;
 b=Q1fwDMz2m/ZJOC6rVNqjFvt+8ZOfLMLR0m8xZMmrg+IJ7ABs2BpoHs88hfX82F+MhGcX1V
 85rXitTCbAfVt7EcNwrf2Q9QPEFoAjk+DTHimgev+pGgLFAIXx9YNMQ1nEWVa83VbtQSnd
 vDBncv0auJBQH4fShHV5Pm7wI+dn/yg=
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com
 [209.85.208.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-50-aVTo2dNSOSW4PMYCqWDvFg-1; Sun, 21 Mar 2021 12:37:39 -0400
X-MC-Unique: aVTo2dNSOSW4PMYCqWDvFg-1
Received: by mail-ed1-f70.google.com with SMTP id bi17so25943101edb.6
 for <ibm-acpi-devel@lists.sourceforge.net>;
 Sun, 21 Mar 2021 09:37:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=qNSMOQVMtFLXfRA64H5U21/1b4tMY96NTROWskuxqec=;
 b=hbGIJ8IH1CUOhLqvzm88fnjwhHRaeXbiBL4sos5jgRMvhejBtZvzSEvu1PTWAdb/WI
 Ova1SklKLk8V7AIbgUcsr8neX1qODOQlXOYD/Yok5kgqQZXJhUJ+L2ElGbXmG0TFAyzt
 JyhbZP8rqHWphaBU06pILFCkRrUGQxFy0fHKVhlOmvMjlTnrfeL0M9SYA+N8ne3d6KNl
 Pr/qPxJvPBsxvuyu74r94M8Q9vdx/51EsP1pGGyl6PAU9XXwxuVdISofkY5HC0/dINmS
 68g7iaA4vA3MlGIqhAHu71WqV/vZls3iKLk9o3pDPml+2UAYb43qDmO4eANHNyHcJOzl
 Gifw==
X-Gm-Message-State: AOAM532u4ueqcs3OsuzZC1NjOOLI2xTVGeUrap5/nfGA+g+/c44NhmfV
 Mc8eureUL0DNJ8/gXn0DOGBInueRpoG3nqeZ01/vaVJo8DiZ8YMvCn9cuUK85ErnOPNNEODFpQj
 LU4dbGCOxvdFPb7sHkBoiVwXFMeFTylrSfmc=
X-Received: by 2002:aa7:cdcf:: with SMTP id h15mr21129728edw.28.1616344658428; 
 Sun, 21 Mar 2021 09:37:38 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwuSoIqQxyU+WSlBMHaa8KTM0wZeGXeRfVSqdWdj+22AxTf4OZtAwB3tEC3B470hpLGXc1SHQ==
X-Received: by 2002:aa7:cdcf:: with SMTP id h15mr21129718edw.28.1616344658297; 
 Sun, 21 Mar 2021 09:37:38 -0700 (PDT)
Received: from x1.localdomain
 (2001-1c00-0c1e-bf00-1054-9d19-e0f0-8214.cable.dynamic.v6.ziggo.nl.
 [2001:1c00:c1e:bf00:1054:9d19:e0f0:8214])
 by smtp.gmail.com with ESMTPSA id jj16sm7263465ejc.19.2021.03.21.09.37.37
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 21 Mar 2021 09:37:37 -0700 (PDT)
To: Nitin Joshi1 <njoshi1@lenovo.com>,
 Mark RH Pearson <markpearson@lenovo.com>,
 Esteve Varela Colominas <esteve.varela@gmail.com>,
 Henrique de Moraes Holschuh <ibm-acpi@hmh.eng.br>
References: <20210315195823.23212-1-esteve.varela@gmail.com>
 <7fcaeb12-35b1-242a-dfd0-02324643c34b@redhat.com>
 <18ee74c0-85d9-6a1a-67f5-82682878001a@lenovo.com>
 <TY2PR03MB36456F1A3EFC9C31A865BF498C689@TY2PR03MB3645.apcprd03.prod.outlook.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <87c96962-3db5-ee18-1104-1e9d9b774572@redhat.com>
Date: Sun, 21 Mar 2021 17:37:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <TY2PR03MB36456F1A3EFC9C31A865BF498C689@TY2PR03MB3645.apcprd03.prod.outlook.com>
Authentication-Results: relay.mimecast.com;
 auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=hdegoede@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: hmh.eng.br]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [170.10.133.124 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 1.0 RDNS_NONE Delivered to internal network by a host with no rDNS
 -0.0 NICE_REPLY_A           Looks like a legit reply (A)
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1lO15V-0002Do-8P
Subject: Re: [ibm-acpi-devel] [External] Re: [PATCH] thinkpad_acpi: Allow
 the FnLock LED to change state
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
Cc: "ibm-acpi-devel@lists.sourceforge.net"
 <ibm-acpi-devel@lists.sourceforge.net>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiAzLzE5LzIxIDExOjM5IEFNLCBOaXRpbiBKb3NoaTEgd3JvdGU6Cj4gSGVsbG8sCj4g
Cj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tCj4+IEZyb206IE1hcmsgUkggUGVhcnNvbiA8
bWFya3BlYXJzb25AbGVub3ZvLmNvbT4KPj4gU2VudDogRnJpZGF5LCBNYXJjaCAxOSwgMjAyMSA1
OjEzIEFNCj4+IFRvOiBIYW5zIGRlIEdvZWRlIDxoZGVnb2VkZUByZWRoYXQuY29tPjsgRXN0ZXZl
IFZhcmVsYSBDb2xvbWluYXMKPj4gPGVzdGV2ZS52YXJlbGFAZ21haWwuY29tPjsgSGVucmlxdWUg
ZGUgTW9yYWVzIEhvbHNjaHVoIDxpYm0tCj4+IGFjcGlAaG1oLmVuZy5icj47IE5pdGluIEpvc2hp
MSA8bmpvc2hpMUBsZW5vdm8uY29tPgo+PiBDYzogaWJtLWFjcGktZGV2ZWxAbGlzdHMuc291cmNl
Zm9yZ2UubmV0OyBwbGF0Zm9ybS1kcml2ZXItCj4+IHg4NkB2Z2VyLmtlcm5lbC5vcmcKPj4gU3Vi
amVjdDogUmU6IFtFeHRlcm5hbF0gUmU6IFtQQVRDSF0gdGhpbmtwYWRfYWNwaTogQWxsb3cgdGhl
IEZuTG9jayBMRUQgdG8KPj4gY2hhbmdlIHN0YXRlCj4+Cj4+IFRoYW5rcyBIYW5zCj4+Cj4+IE9u
IDE4LzAzLzIwMjEgMTI6NDksIEhhbnMgZGUgR29lZGUgd3JvdGU6Cj4+PiBIaSwKPj4+Cj4+PiBP
biAzLzE1LzIxIDg6NTggUE0sIEVzdGV2ZSBWYXJlbGEgQ29sb21pbmFzIHdyb3RlOgo+Pj4+IE9u
IG1hbnkgcmVjZW50IFRoaW5rUGFkIGxhcHRvcHMsIHRoZXJlJ3MgYSBuZXcgTEVEIG5leHQgdG8g
dGhlIEVTQwo+Pj4+IGtleSwgdGhhdCBpbmRpY2F0ZXMgdGhlIEZuTG9jayBzdGF0dXMuCj4+Pj4g
V2hlbiB0aGUgRm4rRVNDIGNvbWJvIGlzIHByZXNzZWQsIEZuTG9jayBpcyB0b2dnbGVkLCB3aGlj
aCBjYXVzZXMgdGhlCj4+Pj4gTWVkaWEgS2V5IGZ1bmN0aW9uYWxpdHkgdG8gY2hhbmdlLCBtYWtp
bmcgaXQgc28gdGhhdCB0aGUgbWVkaWEga2V5cwo+Pj4+IGVpdGhlciBwZXJmb3JtIHRoZWlyIG1l
ZGlhIGtleSBmdW5jdGlvbiwgb3IgZnVuY3Rpb24gYXMgYW4gRi1rZXkgYnkKPj4+PiBkZWZhdWx0
LiBUaGUgRm4ga2V5IGNhbiBiZSB1c2VkIHRoZSBhY2Nlc3MgdGhlIGFsdGVybmF0ZSBmdW5jdGlv
biBhdAo+Pj4+IGFueSB0aW1lLgo+Pj4+Cj4+Pj4gV2l0aCB0aGUgY3VycmVudCBsaW51eCBrZXJu
ZWwsIHRoZSBMRUQgZG9lbnMndCBjaGFuZ2Ugc3RhdGUgaWYgeW91Cj4+Pj4gcHJlc3MgdGhlIEZu
K0VTQyBrZXkgY29tYm8uIEhvd2V2ZXIsIHRoZSBtZWRpYSBrZXkgZnVuY3Rpb25hbGl0eQo+Pj4+
ICpkb2VzKiBjaGFuZ2UuIFRoaXMgaXMgYW5ub3lpbmcsIHNpbmNlIHRoZSBMRUQgd2lsbCBzdGF5
IG9uIGlmIGl0IHdhcwo+Pj4+IG9uIGR1cmluZyBib290dXAsIGFuZCBpdCBtYWtlcyBpdCBoYXJk
IHRvIGtlZXAgdHJhY2sgd2hhdCB0aGUgY3VycmVudAo+Pj4+IHN0YXRlIG9mIHRoZSBGbkxvY2sg
aXMuCj4+Pj4KPj4+PiBUaGlzIHBhdGNoIGNhbGxzIGFuIEFDUEkgZnVuY3Rpb24sIHRoYXQgZ2V0
cyB0aGUgY3VycmVudCBtZWRpYSBrZXkKPj4+PiBzdGF0ZSwgd2hlbiB0aGUgRm4rRVNDIGtleSBj
b21ibyBpcyBwcmVzc2VkLiBUaHJvdWdoIHRlc3RpbmcgaXQgd2FzCj4+Pj4gZGlzY292ZXJlZCB0
aGF0IHRoaXMgZnVuY3Rpb24gY2F1c2VzIHRoZSBMRUQgdG8gdXBkYXRlIGNvcnJlY3RseSB0bwo+
Pj4+IHJlZmxlY3QgdGhlIGN1cnJlbnQgc3RhdGUgd2hlbiB0aGlzIGZ1bmN0aW9uIGlzIGNhbGxl
ZC4KPj4+Pgo+Pj4+IFRoZSByZWxldmFudCBBQ1BJIGNhbGxzIGFyZSB0aGUgZm9sbG93aW5nOgo+
Pj4+IFxfU0JfLlBDSTAuTFBDMC5FQzBfLkhLRVkuR01LUzogR2V0IG1lZGlhIGtleSBzdGF0ZSwg
cmV0dXJucyAweDYwMyBpZgo+PiB0aGUgRm5Mb2NrIG1vZGUgaXMgZW5hYmxlZCwgYW5kIDB4NjAy
IGlmIGl0J3MgZGlzYWJsZWQuCj4+Pj4gXF9TQl8uUENJMC5MUEMwLkVDMF8uSEtFWS5TTUtTOiBT
ZXQgbWVkaWEga2V5IHN0YXRlLCBzZW5kaW5nIGEgMSB3aWxsCj4+IGVuYWJsZSBGbkxvY2sgbW9k
ZSwgYW5kIGEgMCB3aWxsIGRpc2FibGUgaXQuCj4+Pj4KPj4+PiBSZWxldmFudCBkaXNjdXNzaW9u
Ogo+Pj4+IGh0dHBzOi8vYnVnemlsbGEua2VybmVsLm9yZy9zaG93X2J1Zy5jZ2k/aWQ9MjA3ODQx
Cj4+Pj4gaHR0cHM6Ly9idWdzLmxhdW5jaHBhZC5uZXQvdWJ1bnR1Lytzb3VyY2UvbGludXgvK2J1
Zy8xODgxMDE1Cj4+Pj4KPj4+PiBTaWduZWQtb2ZmLWJ5OiBFc3RldmUgVmFyZWxhIENvbG9taW5h
cyA8ZXN0ZXZlLnZhcmVsYUBnbWFpbC5jb20+Cj4+Pj4gLS0tCj4+Pj4gIGRyaXZlcnMvcGxhdGZv
cm0veDg2L3RoaW5rcGFkX2FjcGkuYyB8IDggKysrKysrKy0KPj4+PiAgMSBmaWxlIGNoYW5nZWQs
IDcgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pj4+Cj4+Pj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGxhdGZvcm0veDg2L3RoaW5rcGFkX2FjcGkuYwo+Pj4+IGIvZHJpdmVycy9wbGF0Zm9y
bS94ODYvdGhpbmtwYWRfYWNwaS5jCj4+Pj4gaW5kZXggYzQwNDcwNjM3Li4wOTM2MmRkNzQgMTAw
NjQ0Cj4+Pj4gLS0tIGEvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4+Pj4g
KysrIGIvZHJpdmVycy9wbGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jCj4+Pj4gQEAgLTQwNzks
MTMgKzQwNzksMTkgQEAgc3RhdGljIGJvb2wgaG90a2V5X25vdGlmeV82eHh4KGNvbnN0IHUzMgo+
Pj4+IGhrZXksCj4+Pj4KPj4+PiAgCWNhc2UgVFBfSEtFWV9FVl9LRVlfTlVNTE9DSzoKPj4+PiAg
CWNhc2UgVFBfSEtFWV9FVl9LRVlfRk46Cj4+Pj4gLQljYXNlIFRQX0hLRVlfRVZfS0VZX0ZOX0VT
QzoKPj4+PiAgCQkvKiBrZXkgcHJlc3MgZXZlbnRzLCB3ZSBqdXN0IGlnbm9yZSB0aGVtIGFzIGxv
bmcgYXMgdGhlIEVDCj4+Pj4gIAkJICogaXMgc3RpbGwgcmVwb3J0aW5nIHRoZW0gaW4gdGhlIG5v
cm1hbCBrZXlib2FyZCBzdHJlYW0gKi8KPj4+PiAgCQkqc2VuZF9hY3BpX2V2ID0gZmFsc2U7Cj4+
Pj4gIAkJKmlnbm9yZV9hY3BpX2V2ID0gdHJ1ZTsKPj4+PiAgCQlyZXR1cm4gdHJ1ZTsKPj4+Pgo+
Pj4+ICsJY2FzZSBUUF9IS0VZX0VWX0tFWV9GTl9FU0M6Cj4+Pj4gKwkJLyogR2V0IHRoZSBtZWRp
YSBrZXkgc3RhdHVzIHRvIGZvY2UgdGhlIHN0YXR1cyBMRUQgdG8gdXBkYXRlICovCj4+Pj4gKwkJ
YWNwaV9ldmFsZihoa2V5X2hhbmRsZSwgTlVMTCwgIkdNS1MiLCAidiIpOwo+Pj4KPj4+IFNpY25l
IHRoaXMgaXMgYSBnZXR0ZXIgZnVuY3Rpb24gSSBndWVzcyB0aGF0IGNhbGxpbmcgaXQgaXMgbW9z
dGx5Cj4+PiBoYXJtbGVzcyBhbmQgaWYgaXQgd29ya3MgYXJvdW5kIHdoYXQgc2VlbXMgdG8gYmUg
YSBmaXJtd2FyZSBidWcgb24KPj4+IHNvbWUgb2YgdGhlIEU/OTUgVGhpbmtQYWQgbW9kZWxzIHRo
ZW4gSSBndWVzcyB0aGF0IHRoaXMgaXMgZmluZSBieSBtZS4KPj4+Cj4+PiBNYXJrLCBkbyB5b3Ug
aGF2ZSBhbnkgY29tbWVudHMgb24gdGhpcyA/Cj4+IEknZCBsaWtlIHRvIGZvbGxvdyB1cCB3aXRo
IHRoZSBmaXJtd2FyZSB0ZWFtIHRvIG1ha2Ugc3VyZSB3ZSd2ZSBnb3QgdGhlIGNvcnJlY3QKPj4g
ZGV0YWlscyBhbmQgaW1wbGVtZW50YXRpb24gKGt1ZG9zIG9uIHRoZSByZXZlcnNlIGVuZ2luZWVy
aW5nIHRob3VnaCkuCj4+Cj4+IE5pdGluIC0geW91J3ZlIHdvcmtlZCB3aXRoIHRoZSBmaXJtd2Fy
ZSB0ZWFtIG9uIGhvdGtleXMsIHdvdWxkIHlvdSBtaW5kCj4+IGRpZ2dpbmcgaW50byB0aGlzIG9u
ZSBwbGVhc2UgdG8gY29uZmlybS4gSW4gcGFydGljdWxhciBpZiB0aGVyZSdzIGJlZW4gYSBjaGFu
Z2UKPj4gaG93IGRvIHdlIG1ha2Ugc3VyZSB3ZSBkb24ndCBpbXBhY3Qgb2xkZXIgcGxhdGZvcm1z
IGV0Yy4KPiAKPiBSZWdhcmRpbmcgIkdNS1MiIG1ldGhvZCwgaXQgZG9lcyBub3QgaGF2ZSAidmVy
c2lvbiIgcmVsYXRlZCBpbmZvcm1hdGlvbi4gU28gLCBpdHMgdW5saWtlbHkgdG8gaW1wYWN0IGFu
eSBvbGRlciBwbGF0Zm9ybXMuCj4gSG93ZXZlciwgSSBnb3QgaXQgY29uZmlybWVkIHRoYXQgZGVm
aW5pdGlvbiBvZiBHTUtTIG1ldGhvZCBpdHNlbGYgZG9lc24ndCBpbmNsdWRlIGFueSB3b3JrYXJv
dW5kIGZlYXR1cmUuIAo+IAo+IEJ1dCwgc2luY2UgaXRzIGdldHRlciBmdW5jdGlvbiAsIEkgYWxz
byB0aGluayBpdHMgaGFybWxlc3MgYW5kIGlmIGl0IHdvcmthcm91bmQgc29tZSBpc3N1ZSB0aGVu
IEkgZG9u4oCZdCBzZWUgYW55IGNvbmNlcm4uCgpPaywgSSdsbCBtZXJnZSB0aGlzIHBhdGNoIHRo
ZW4uCgpSZWdhcmRzLAoKSGFucwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwppYm0tYWNwaS1kZXZlbCBtYWlsaW5nIGxpc3QKaWJtLWFjcGktZGV2ZWxA
bGlzdHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3Rz
L2xpc3RpbmZvL2libS1hY3BpLWRldmVsCg==
