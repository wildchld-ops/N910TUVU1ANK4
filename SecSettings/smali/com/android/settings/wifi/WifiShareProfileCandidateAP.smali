.class public Lcom/android/settings/wifi/WifiShareProfileCandidateAP;
.super Landroid/preference/Preference;
.source "WifiShareProfileCandidateAP.java"


# static fields
.field private static count:I


# instance fields
.field public index:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public network:Ljava/lang/String;

.field public priority:I

.field public security:Ljava/lang/String;

.field public ssid:Ljava/lang/String;

.field public timeoutIndex:I

.field private timeoutValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->count:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->ssid:Ljava/lang/String;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->network:Ljava/lang/String;

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->priority:I

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    const/4 v7, 0x3

    iput v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    iput-object p1, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->ssid:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->index:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->network:Ljava/lang/String;

    iput p5, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->priority:I

    const v7, 0x7f0401e0

    invoke-virtual {p0, v7}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const-string v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->decryptSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/ScanResult;

    iget-object v7, v4, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurityPSK(Landroid/net/wifi/WifiConfiguration;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurityPSK(Landroid/net/wifi/ScanResult;)I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_1

    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_2

    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v8, 0x7f090421

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_3

    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v8, 0x7f090422

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v8, 0x7f090423

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    if-nez v7, :cond_5

    if-eqz p3, :cond_5

    const-string v7, "\tkey_mgmt=NONE"

    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "\tauth_alg=OPEN SHARED"

    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v8, 0x7f090420

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0049

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutValues:[Ljava/lang/String;

    return-void

    :cond_6
    const-string v7, "\tkey_mgmt=WPA-PSK"

    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v8, 0x7f090423

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    goto :goto_1

    :cond_7
    const-string v7, "\tkey_mgmt=FT-PSK"

    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v8, 0x7f090427

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    goto :goto_1
.end method

.method private decryptSsid(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const-string v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "\""

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v5, 0x2

    if-lt v3, v5, :cond_0

    rem-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_1
    div-int/lit8 v5, v3, 0x2

    if-ge v2, v5, :cond_2

    const-string v5, "\\x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v5, v2, 0x2

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    goto :goto_0

    :cond_3
    const-string v0, "<unknown ssid>"

    goto :goto_2
.end method

.method private getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 4

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iget-object v2, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x3

    :goto_0
    return v2

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSecurityPSK(Landroid/net/wifi/ScanResult;)I
    .locals 2

    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSecurityPSK(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 3

    instance-of v1, p1, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;

    iget v1, v0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->priority:I

    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->priority:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->ssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->decryptSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b049b

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0203cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->refresh()V

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public refresh()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->mContext:Landroid/content/Context;

    const v1, 0x7f090400

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->security:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updatedNetwork()Ljava/lang/String;
    .locals 5

    const-string v1, "0"

    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    const-string v1, "0"

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->network:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->network:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tshared=1\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\texpiration=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\"\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "}\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_1
    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    if-nez v2, :cond_2

    const/16 v2, 0x5460

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const v2, 0xa8c0

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/settings/wifi/WifiShareProfileCandidateAP;->timeoutIndex:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const v2, 0x15180

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
