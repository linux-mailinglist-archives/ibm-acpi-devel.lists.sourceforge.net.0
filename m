Return-Path: <ibm-acpi-devel-bounces@lists.sourceforge.net>
X-Original-To: lists+ibm-acpi-devel@lfdr.de
Delivered-To: lists+ibm-acpi-devel@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5EDAA158BB
	for <lists+ibm-acpi-devel@lfdr.de>; Fri, 17 Jan 2025 21:46:43 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <ibm-acpi-devel-bounces@lists.sourceforge.net>)
	id 1tYtEH-0003Vo-EU;
	Fri, 17 Jan 2025 20:46:08 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <mpearson-lenovo@squebb.ca>) id 1tYtEF-0003Vg-Oe
 for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 17 Jan 2025 20:46:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Subject:
 References:In-Reply-To:Message-Id:Cc:To:From:Date:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=bm5w52HLJMVDLIxXBhpPYfOqcVvLk7HCvS+VcMPBAgM=; b=Oc3Y0a5CpSJJVXki6HwnKySmjZ
 CPtke+d6rlsc8ZUyPVEdMjnYrYB8ISdcCMfSm97etTbC5WCWs5YFbPJwzx/2ZJHH+cVJgQYEMilqw
 6k/22QdUz22/HBOn+aKveCAaddyKyVchLRuYkt83Fc5lq0TvrVWXE/4exDlILKVyZN8o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Subject:References:In-Reply-To:
 Message-Id:Cc:To:From:Date:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bm5w52HLJMVDLIxXBhpPYfOqcVvLk7HCvS+VcMPBAgM=; b=B3wIiZVD3UKA/4YwjZWvtUag2X
 v1OtPAEYjZ+KUuMORAmW9MBGO6yNG03ds9iHgC7P4OHMhOS9/uZwWt0EXzQLPuijN1XY9PCWl65b3
 tlYBKsgsqpKOVmkjVl1tXpFDmRyNvx8Y9zIoMasRi7ymL/7+ketrkxWDRL1nr5q1sxnc=;
Received: from fout-a6-smtp.messagingengine.com ([103.168.172.149])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tYtEA-0005NK-Dk for ibm-acpi-devel@lists.sourceforge.net;
 Fri, 17 Jan 2025 20:46:07 +0000
Received: from phl-compute-02.internal (phl-compute-02.phl.internal
 [10.202.2.42])
 by mailfout.phl.internal (Postfix) with ESMTP id B2E1613801F7;
 Fri, 17 Jan 2025 15:45:56 -0500 (EST)
Received: from phl-imap-10 ([10.202.2.85])
 by phl-compute-02.internal (MEProxy); Fri, 17 Jan 2025 15:45:56 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=squebb.ca; h=cc
 :cc:content-transfer-encoding:content-type:content-type:date
 :date:from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to; s=fm3; t=1737146756;
 x=1737233156; bh=bm5w52HLJMVDLIxXBhpPYfOqcVvLk7HCvS+VcMPBAgM=; b=
 FaQ1C/naLXYi4hXLVWijAXyxD0zTMStzPCcfZ0zxiSLpI6V96/+fzwcU8RtM1ROK
 dsdnys2Yq34SABpYip/b0JWv77hjQIcB3bsrGxYBy2/UMSaDmoaB1pqxJATYCQOR
 abliUK3nuPW7FShSzERnTjuSA8Qzg3dYiXfE+wS++lgnGLxKtdRWbqA82Bv1o6g3
 40d6LbMcDBTcqjX8jff0uLjXqt1H0TEmvqIWZiqWb6PjVI75AVZhu6oflKSV9aDv
 147srD2S/WsD6VtvpTxUg7pIV/ZEKhr3d2D0guJNXmH7r7LvIb2NN7rilsD0/S+w
 pBb5i++cezCAGknGaFKIug==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-transfer-encoding
 :content-type:content-type:date:date:feedback-id:feedback-id
 :from:from:in-reply-to:in-reply-to:message-id:mime-version
 :references:reply-to:subject:subject:to:to:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1737146756; x=
 1737233156; bh=bm5w52HLJMVDLIxXBhpPYfOqcVvLk7HCvS+VcMPBAgM=; b=L
 ra2iHOmzAfTcPD/XytYS3xsfai31edigy+315J/RPfIHU/5JA4cSxqmH6mH80wjF
 lptNspmQcEJEYXYQ/g+4FWr3iZK4igTL5vJPQD8Fe5k+r1LuMqZJkKtCrYdHi7Dr
 S3z+svXLEWHSNIVQmiJrEGHmjoC9uL/LNKNCNb78y1hMyRGTZwFkqiTb5LM7Uz72
 icl8iE3CIAbcqMqeDY0e5t1dOfFi6mBCvn2fqa+Kzp9LzVmn8/54EQ2oXf4qy7s6
 bLeU204+6/XC3KBuZX1LjiWokyWQLuNKTwOLpojU7+j1hFtPip0O+2/NauBMKeAo
 +/a5bkm0qNqrw618nxMsw==
X-ME-Sender: <xms:g8GKZ3KI0M55Hnofk89kyCPMJXjadTi95CvCSV0UKXOcpfwZyvdlwQ>
 <xme:g8GKZ7KgblbKK5DSe9AlER0pBBi-pbPTbaLu6tdQbs9M4PCZb02cVooiHrW-SguKX
 HZd0wOwQtMkBAGjrXQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeefuddrudeifedgudeflecutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpggftfghnshhusghstghrihgsvgdp
 uffrtefokffrpgfnqfghnecuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivg
 hnthhsucdlqddutddtmdenucfjughrpefoggffhffvvefkjghfufgtgfesthhqredtredt
 jeenucfhrhhomhepfdforghrkhcurfgvrghrshhonhdfuceomhhpvggrrhhsohhnqdhlvg
 hnohhvohesshhquhgvsggsrdgtrgeqnecuggftrfgrthhtvghrnhepgedvgeeufffhtdel
 iefgjefhgffgiedvjeegleeujeeutdduteehjeduhedtiedtnecuffhomhgrihhnpehkvg
 hrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmphgvrghrshhonhdqlhgvnhhovhhosehsqhhuvggssgdrtggrpdhnsggprh
 gtphhtthhopedvhedpmhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepshhhhigrmhdq
 shhunhgurghrrdhsqdhksegrmhgurdgtohhmpdhrtghpthhtohepmhgrrhhiohdrlhhimh
 honhgtihgvlhhlohesrghmugdrtghomhdprhgtphhtthhopehikhgvrdhprghnsegtrghn
 ohhnihgtrghlrdgtohhmpdhrtghpthhtohepuggvlhhlrdgtlhhivghnthdrkhgvrhhnvg
 hlseguvghllhdrtghomhdprhgtphhtthhopegrlhgvgigsvghlmhegkeesghhmrghilhdr
 tghomhdprhgtphhtthhopegtohhrvghnthhinhdrtghhrghrhiesghhmrghilhdrtghomh
 dprhgtphhtthhopeguvghrvghkjhhohhhnrdgtlhgrrhhksehgmhgrihhlrdgtohhmpdhr
 tghpthhtohepkhhuuhhrthgssehgmhgrihhlrdgtohhmpdhrtghpthhtoheplhhuiihmrg
 igihhmihhlihgrnhesghhmrghilhdrtghomh
X-ME-Proxy: <xmx:g8GKZ_uv8qiN7wIPMqJFhMa3vk6pU0-UPRcMz2swN3lMmqtedTbnAQ>
 <xmx:g8GKZwbctyOfsLQMHO11ukM3DxUWzQqvUsiv5RmQUH7tTbgzeEdRGg>
 <xmx:g8GKZ-bWwarsM7rnNKK3GMDRXnn1JBOOa6RUyKmkgFIWwpqLo0eB6w>
 <xmx:g8GKZ0DAieznYcPIIDvWM84Igxl1_tDRVbTOjKkDmURPCBgZn1AAJA>
 <xmx:hMGKZ6IrUFnuabx6ZZ0II-b2HqvGb76HcyCH9-3uzDRu_LrYXJ3ilhaN>
Feedback-ID: ibe194615:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
 id 274CD3C0066; Fri, 17 Jan 2025 15:45:55 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Fri, 17 Jan 2025 15:45:34 -0500
From: "Mark Pearson" <mpearson-lenovo@squebb.ca>
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>,
 "Kurt Borja" <kuurtb@gmail.com>
Message-Id: <f4e08213-0f42-4f35-a150-a75bf91537bf@app.fastmail.com>
In-Reply-To: <f8678f9c-56c2-b3a9-f24d-04c9433dba9f@linux.intel.com>
References: <20250116002721.75592-1-kuurtb@gmail.com>
 <1eb2720a-c9af-4e5c-8df2-c4ce3c017d5c@app.fastmail.com>
 <3aab5072-f032-7458-56af-1d45e89a5d44@linux.intel.com>
 <D74IM4AZ87C9.1R1S1KOA89PX7@gmail.com>
 <f8678f9c-56c2-b3a9-f24d-04c9433dba9f@linux.intel.com>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-1.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On Fri, Jan 17, 2025, at 12:19 PM, Ilpo Järvinen wrote:
    > On Fri, 17 Jan 2025, Kurt Borja wrote: > >> On Fri Jan 17, 2025 at 11:42
    AM -05, Ilpo Järvinen wrote: >> > On Thu, 16 Jan 2025, Mark Pearson [...]
    
 
 Content analysis details:   (-0.9 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
                             The query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                             [103.168.172.149 listed in sa-accredit.habeas.com]
  0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
                             query to Validity was blocked.  See
                             https://knowledge.validity.com/hc/en-us/articles/20961730681243
                              for more information.
                           [103.168.172.149 listed in bl.score.senderscore.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
                             low trust
                             [103.168.172.149 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
X-Headers-End: 1tYtEA-0005NK-Dk
Subject: Re: [ibm-acpi-devel] [PATCH v4 00/19] Hide platform_profile_handler
 from consumers
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
Cc: Shyam Sundar S K <Shyam-sundar.S-k@amd.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "platform-driver-x86@vger.kernel.org" <platform-driver-x86@vger.kernel.org>,
 ibm-acpi-devel@lists.sourceforge.net, "Limonciello,
 Mario" <mario.limonciello@amd.com>,
 Henrique de Moraes Holschuh <hmh@hmh.eng.br>,
 Ike Panhc <ike.pan@canonical.com>, Alexis Belmonte <alexbelm48@gmail.com>,
 "Luke D . Jones" <luke@ljones.dev>, Lyndon Sanche <lsanche@lyndeno.ca>,
 Ai Chao <aichao@kylinos.cn>, "Derek J . Clark" <derekjohn.clark@gmail.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 Gergo Koteles <soyer@irl.hu>, Len Brown <lenb@kernel.org>,
 Lee Chun-Yi <jlee@suse.com>, Hans de Goede <hdegoede@redhat.com>,
 Dell.Client.Kernel@dell.com, Joshua Grisham <josh@joshuagrisham.com>,
 Armin Wolf <W_Armin@gmx.de>, LKML <linux-kernel@vger.kernel.org>,
 Corentin Chary <corentin.chary@gmail.com>,
 Maximilian Luz <luzmaximilian@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: ibm-acpi-devel-bounces@lists.sourceforge.net

SGksCgpPbiBGcmksIEphbiAxNywgMjAyNSwgYXQgMTI6MTkgUE0sIElscG8gSsOkcnZpbmVuIHdy
b3RlOgo+IE9uIEZyaSwgMTcgSmFuIDIwMjUsIEt1cnQgQm9yamEgd3JvdGU6Cj4KPj4gT24gRnJp
IEphbiAxNywgMjAyNSBhdCAxMTo0MiBBTSAtMDUsIElscG8gSsOkcnZpbmVuIHdyb3RlOgo+PiA+
IE9uIFRodSwgMTYgSmFuIDIwMjUsIE1hcmsgUGVhcnNvbiB3cm90ZToKPj4gPgo+PiA+ID4gSGkK
Pj4gPiA+IAo+PiA+ID4gT24gV2VkLCBKYW4gMTUsIDIwMjUsIGF0IDc6MjcgUE0sIEt1cnQgQm9y
amEgd3JvdGU6Cj4+ID4gPiA+IEhpIDopCj4+ID4gPiA+Cj4+ID4gPiA+IFRoZSBtZXJnZSB3aW5k
b3cgaXMgYWJvdXQgdG8gb3Blbiwgc28gSSByZWJhc2VkIHRoaXMgcGF0Y2hzZXQgb24gdG9wIG9m
Cj4+ID4gPiA+IHBkeDg2L3Jldmlldy1pbHBvLW5leHQgdG8gcGljayB1cCBhY2VyLXdtaSBsYXRl
c3QgY29tbWl0cywgaW4gY2FzZSB3ZQo+PiA+ID4gPiBtYW5hZ2UgdG8gc3F1ZWV6ZSB0aGlzIGlu
dG8gdjYuMTQuCj4+ID4gPiA+Cj4+ID4gPiA+IH4gS3VydAo+PiA+ID4gPiAtLS0KPj4gPiA+ID4g
djMgLT4gdjQ6Cj4+ID4gPiA+Cj4+ID4gPiA+IFswOS8xOV0KPj4gPiA+ID4gICAtIFJlcGxhY2Ug
ZXJyb3IgbWVzc2FnZSB3aXRoIGEgdXNlci1mcmllbmRseSBvbmUKPj4gPiA+ID4KPj4gPiA+ID4g
djM6IAo+PiA+ID4gPiBodHRwczovL2xvcmUua2VybmVsLm9yZy9wbGF0Zm9ybS1kcml2ZXIteDg2
LzIwMjUwMTE1MDcxMDIyLjQ4MTUtMS1rdXVydGJAZ21haWwuY29tLwo+PiA+ID4gPgo+PiA+ID4g
PiBLdXJ0IEJvcmphICgxOSk6Cj4+ID4gPiA+ICAgQUNQSTogcGxhdGZvcm1fcHJvZmlsZTogUmVw
bGFjZSAqY2xhc3NfZGV2IG1lbWJlciB3aXRoIGNsYXNzX2Rldgo+PiA+ID4gPiAgIEFDUEk6IHBs
YXRmb3JtX3Byb2ZpbGU6IExldCBkcml2ZXJzIHNldCBkcnZkYXRhIHRvIHRoZSBjbGFzcyBkZXZp
Y2UKPj4gPiA+ID4gICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBSZW1vdmUgcGxhdGZvcm1fcHJv
ZmlsZV9oYW5kbGVyIGZyb20gY2FsbGJhY2tzCj4+ID4gPiA+ICAgQUNQSTogcGxhdGZvcm1fcHJv
ZmlsZTogQWRkIGBvcHNgIG1lbWJlciB0byBoYW5kbGVycwo+PiA+ID4gPiAgIEFDUEk6IHBsYXRm
b3JtX3Byb2ZpbGU6IEFkZCBgcHJvYmVgIHRvIHBsYXRmb3JtX3Byb2ZpbGVfb3BzCj4+ID4gPiA+
ICAgcGxhdGZvcm0vc3VyZmFjZTogc3VyZmFjZV9wbGF0Zm9ybV9wcm9maWxlOiBVc2UKPj4gPiA+
ID4gICAgIGRldm1fcGxhdGZvcm1fcHJvZmlsZV9yZWdpc3RlcigpCj4+ID4gPiA+ICAgcGxhdGZv
cm0veDg2OiBhY2VyLXdtaTogVXNlIGRldm1fcGxhdGZvcm1fcHJvZmlsZV9yZWdpc3RlcigpCj4+
ID4gPiA+ICAgcGxhdGZvcm0veDg2OiBhbWQ6IHBtZjogc3BzOiBVc2UgZGV2bV9wbGF0Zm9ybV9w
cm9maWxlX3JlZ2lzdGVyKCkKPj4gPiA+ID4gICBwbGF0Zm9ybS94ODY6IGFzdXMtd21pOiBVc2Ug
ZGV2bV9wbGF0Zm9ybV9wcm9maWxlX3JlZ2lzdGVyKCkKPj4gPiA+ID4gICBwbGF0Zm9ybS94ODY6
IGRlbGwtcGM6IFVzZSBkZXZtX3BsYXRmb3JtX3Byb2ZpbGVfcmVnaXN0ZXIoKQo+PiA+ID4gPiAg
IHBsYXRmb3JtL3g4NjogaWRlYXBhZC1sYXB0b3A6IFVzZSBkZXZtX3BsYXRmb3JtX3Byb2ZpbGVf
cmVnaXN0ZXIoKQo+PiA+ID4gPiAgIHBsYXRmb3JtL3g4NjogaHAtd21pOiBVc2UgZGV2bV9wbGF0
Zm9ybV9wcm9maWxlX3JlZ2lzdGVyKCkKPj4gPiA+ID4gICBwbGF0Zm9ybS94ODY6IGluc3B1cl9w
bGF0Zm9ybV9wcm9maWxlOiBVc2UKPj4gPiA+ID4gICAgIGRldm1fcGxhdGZvcm1fcHJvZmlsZV9y
ZWdpc3RlcigpCj4+ID4gPiA+ICAgcGxhdGZvcm0veDg2OiB0aGlua3BhZF9hY3BpOiBVc2UgZGV2
bV9wbGF0Zm9ybV9wcm9maWxlX3JlZ2lzdGVyKCkKPj4gPiA+ID4gICBBQ1BJOiBwbGF0Zm9ybV9w
cm9maWxlOiBSZW1vdmUgcGxhdGZvcm1fcHJvZmlsZV9oYW5kbGVyIGZyb20gZXhwb3J0ZWQKPj4g
PiA+ID4gICAgIHN5bWJvbHMKPj4gPiA+ID4gICBBQ1BJOiBwbGF0Zm9ybV9wcm9maWxlOiBNb3Zl
IHBsYXRmb3JtX3Byb2ZpbGVfaGFuZGxlcgo+PiA+ID4gPiAgIEFDUEk6IHBsYXRmb3JtX3Byb2Zp
bGU6IENsZWFuIHBsYXRmb3JtX3Byb2ZpbGVfaGFuZGxlcgo+PiA+ID4gPiAgIEFDUEk6IHBsYXRm
b3JtX3Byb2ZpbGU6IEFkZCBkb2N1bWVudGF0aW9uCj4+ID4gPiA+ICAgQUNQSTogcGxhdGZvcm1f
cHJvZmlsZTogQWRkIGEgcHJlZml4IHRvIGxvZyBtZXNzYWdlcwo+PiA+ID4gPgo+PiA+ID4gPiAg
Li4uL0FCSS90ZXN0aW5nL3N5c2ZzLWNsYXNzLXBsYXRmb3JtLXByb2ZpbGUgIHwgIDQ0ICsrKysr
Cj4+ID4gPiA+ICBkcml2ZXJzL2FjcGkvcGxhdGZvcm1fcHJvZmlsZS5jICAgICAgICAgICAgICAg
fCAxNzIgKysrKysrKysrKysrKy0tLS0tCj4+ID4gPiA+ICAuLi4vc3VyZmFjZS9zdXJmYWNlX3Bs
YXRmb3JtX3Byb2ZpbGUuYyAgICAgICAgfCAgNDggKystLS0KPj4gPiA+ID4gIGRyaXZlcnMvcGxh
dGZvcm0veDg2L2FjZXItd21pLmMgICAgICAgICAgICAgICB8IDExNCArKysrKystLS0tLS0KPj4g
PiA+ID4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L2FtZC9wbWYvY29yZS5jICAgICAgICAgICB8ICAg
MSAtCj4+ID4gPiA+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9hbWQvcG1mL3BtZi5oICAgICAgICAg
ICAgfCAgIDMgKy0KPj4gPiA+ID4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L2FtZC9wbWYvc3BzLmMg
ICAgICAgICAgICB8ICA1MSArKystLS0KPj4gPiA+ID4gIGRyaXZlcnMvcGxhdGZvcm0veDg2L2Fz
dXMtd21pLmMgICAgICAgICAgICAgICB8ICA1NSArKystLS0KPj4gPiA+ID4gIGRyaXZlcnMvcGxh
dGZvcm0veDg2L2RlbGwvYWxpZW53YXJlLXdtaS5jICAgICB8ICAzNCArKy0tCj4+ID4gPiA+ICBk
cml2ZXJzL3BsYXRmb3JtL3g4Ni9kZWxsL2RlbGwtcGMuYyAgICAgICAgICAgfCAgNjAgKysrLS0t
Cj4+ID4gPiA+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9ocC9ocC13bWkuYyAgICAgICAgICAgICAg
fCAgODMgKysrKystLS0tCj4+ID4gPiA+ICBkcml2ZXJzL3BsYXRmb3JtL3g4Ni9pZGVhcGFkLWxh
cHRvcC5jICAgICAgICAgfCAgNDUgKysrLS0KPj4gPiA+ID4gIC4uLi9wbGF0Zm9ybS94ODYvaW5z
cHVyX3BsYXRmb3JtX3Byb2ZpbGUuYyAgICB8ICA0OCArKystLQo+PiA+ID4gPiAgZHJpdmVycy9w
bGF0Zm9ybS94ODYvdGhpbmtwYWRfYWNwaS5jICAgICAgICAgIHwgIDM3ICsrLS0KPj4gPiA+ID4g
IGluY2x1ZGUvbGludXgvcGxhdGZvcm1fcHJvZmlsZS5oICAgICAgICAgICAgICB8ICAzNyArKy0t
Cj4+ID4gPiA+ICAxNSBmaWxlcyBjaGFuZ2VkLCA0OTUgaW5zZXJ0aW9ucygrKSwgMzM3IGRlbGV0
aW9ucygtKQo+PiA+ID4gPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vQUJJL3Rl
c3Rpbmcvc3lzZnMtY2xhc3MtcGxhdGZvcm0tcHJvZmlsZQo+PiA+ID4gPgo+PiA+ID4gPgo+PiA+
ID4gPiBiYXNlLWNvbW1pdDogZDk4YmY2YTZlZDYxYTgwNDdlMTk5NDk1YjA4ODdjY2UzOTJmOGU1
Ygo+PiA+ID4gPiAtLSAKPj4gPiA+ID4gMi40OC4xCj4+ID4gPiAKPj4gPiA+IEZvciB0aGUgc2Vy
aWVzIHVwIHRvIHY0IGNvbW1pdCAxNS8xOToKPj4gPiA+IFJldmlld2VkLWJ5OiBNYXJrIFBlYXJz
b24gPG1wZWFyc29uLWxlbm92b0BzcXVlYmIuY2E+Cj4+ID4gPiAKPj4gPiA+IEkgbmVlZCB0byBn
byBvdmVyIHRoZSBsYXN0IGZldyBjb21taXRzIGp1c3Qgb25jZSBtb3JlLCBhcyB0aGVyZSBhIGZl
dyAKPj4gPiA+IHBpZWNlcyBJIG5lZWQgdG8gZ2V0IG15IGhlYWQgYXJvdW5kIC0gYW5kIEknbSBu
b3QgZ29pbmcgdG8gZ2V0IGl0IGRvbmUgCj4+ID4gPiB0aGlzIGV2ZW5pbmcuIEhvcGUgaXQncyBP
SyB0byBhZGQgcmV2aWV3IGZvciB0aGUgYml0cyB0aGF0IEkgaGF2ZSBkb25lLgo+PiA+Cj4+ID4g
SSwgZm9yIHRoZSBmaXJzdCB0aW1lIGV2ZXIsIHRlc3RlZCBmaWx0ZXItYnJhbmNoIGFuZCBhZnRl
ciBzb21lIGluaXRpYWwgCj4+ID4gaGlja3VwcyBvbiBob3cgdG8gc3BlY2lmeSB0aGUgY29tbWl0
IHJhbmdlLCBnb3QgeW91ciBSZXZpZXdlZC1ieXMgYWRkZWQKPj4gPiB3aXRoIHNpbmdsZSBjb21t
YW5kIDotKS4KPj4gCj4+IEF3ZXNvbWUhIEkgYmVsaWV2ZSBjb21taXQgMTUvMTkKPj4gCj4+IGEy
MTMxMDhjMDFlMCAoIkFDUEk6IHBsYXRmb3JtX3Byb2ZpbGU6IFJlbW92ZSBwbGF0Zm9ybV9wcm9m
aWxlX2hhbmRsZXIgZnJvbSBleHBvcnRlZCBzeW1ib2xzIikKPj4gCj4+IGlzIHN0aWxsIG1pc3Np
bmcgYSByZXYtYnkgYnkgTWFyaywgaWYgdGhlcmUgaXMgc3RpbGwgdGltZS4KPgo+IFRoYW5rcyBm
b3Igbm90aWNpbmcgdGhpcy4gSSBqdXN0IHJlY2FsbGVkIHRoZSBwYXRjaCBudW1iZXJpbmcgd3Jv
bmcuCj4KPiBJdCBzaG91bGQgYmUgZml4ZWQgbm93Lgo+Cj4gLS0gCj4gIGkuCgpJIGZpbmlzaGVk
IG15IHJldmlldywgYW5kIG5vIGNvbmNlcm5zLiBGb3IgdGhlIHNlcmllczoKUmV2aWV3ZWQtYnk6
IE1hcmsgUGVhcnNvbiA8bXBlYXJzb24tbGVub3ZvQHNxdWViYi5jYT4KCk5vdGUgLSBJJ20gYnVp
bGRpbmcgYW5kIHdpbGwgZ2l2ZSBpdCBhIHNuaWZmIHRlc3QgdG9vLCBidXQgdGhhdCB3aWxsIHRh
a2UgYSBiaXQgbG9uZ2VyLgoKVGhhbmtzIGZvciB5b3VyIHdvcmsgb24gdGhpcyBLdXJ0CgpNYXJr
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KaWJtLWFj
cGktZGV2ZWwgbWFpbGluZyBsaXN0CmlibS1hY3BpLWRldmVsQGxpc3RzLnNvdXJjZWZvcmdlLm5l
dApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdlLm5ldC9saXN0cy9saXN0aW5mby9pYm0tYWNwaS1k
ZXZlbAo=
