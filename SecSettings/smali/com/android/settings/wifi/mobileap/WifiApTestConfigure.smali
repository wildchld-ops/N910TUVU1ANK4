.class public Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;
.super Landroid/app/Activity;
.source "WifiApTestConfigure.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DBG:Z

.field private static final MAX_CLIENT:I


# instance fields
.field private CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mChannel:Landroid/widget/Spinner;

.field private mChannel5g:Landroid/widget/Spinner;

.field private mContext:Landroid/content/Context;

.field private mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mLast2gChannel:I

.field private mLast5gChannel:I

.field private mMacaddrAcl:I

.field private mNumBasedOnCharger:I

.field private mNumBasedOnCountry:I

.field private mPassword:Landroid/widget/EditText;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveBtn:Landroid/widget/Button;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityMsg:Landroid/widget/TextView;

.field private mSecurityTypeIndex:I

.field private mSelectedChannel:I

.field private mSelectedMaxClient:I

.field private mSsid:Landroid/widget/EditText;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field mWifiManager:Landroid/net/wifi/WifiManager;

.field private maxClientSpinner:Landroid/widget/Spinner;

.field private password:Ljava/lang/String;

.field private wifiAp5gItem:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCountry:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->DBG:Z

    const-string v0, "8"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->MAX_CLIENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityTypeIndex:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mMacaddrAcl:I

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast2gChannel:I

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast5gChannel:I

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedMaxClient:I

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "36"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "149"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I

    iput v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I

    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)V

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Z
    .locals 1
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->getChgType()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I
    .locals 1
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;I)I
    .locals 0
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;
    .param p1    # I

    iput p1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/widget/Spinner;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I
    .locals 1
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast2gChannel:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;
    .param p1    # [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I
    .locals 1
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/content/Context;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/widget/Spinner;
    .locals 1
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I
    .locals 1
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast5gChannel:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I
    .locals 1
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;I)I
    .locals 0
    .param p0    # Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;
    .param p1    # I

    iput p1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    return p1
.end method

.method private getChgType()Z
    .locals 8

    const-string v0, "/sys/class/sec/switch/chg_type"

    const/4 v1, 0x0

    const-string v3, ""

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    const-string v5, "WifiApTestConfigure"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChgType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v1, v2

    :cond_1
    :goto_1
    const-string v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    const/4 v5, 0x1

    :goto_2
    return v5

    :catch_0
    move-exception v4

    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    :goto_5
    throw v5

    :cond_4
    const/4 v5, 0x0

    goto :goto_2

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v5

    move-object v1, v2

    goto :goto_4

    :catch_4
    move-exception v4

    move-object v1, v2

    goto :goto_3
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p0    # Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 5

    const v4, 0x7f0b065d

    const/16 v3, 0x8

    const/4 v2, 0x0

    const v1, 0x7f0b065c

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityMsg:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityTypeIndex:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    const/16 v2, 0x91

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    const v0, 0x7f0b065a

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityTypeIndex:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1    # Landroid/view/View;

    const/4 v10, 0x3

    const/16 v8, 0x8

    const/4 v9, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    const/16 v7, 0x91

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->password:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->password:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :sswitch_2
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;

    if-eqz v1, :cond_2

    move v6, v7

    :goto_1
    invoke-virtual {v10, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v1, :cond_1

    move v7, v9

    :cond_1
    invoke-virtual {v6, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v6, v8

    goto :goto_1

    :cond_3
    move v8, v7

    goto :goto_2

    :sswitch_3
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;

    if-eqz v2, :cond_5

    move v6, v8

    :goto_3
    invoke-virtual {v10, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;

    if-eqz v2, :cond_4

    move v8, v7

    :cond_4
    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-nez v2, :cond_6

    :goto_4
    invoke-virtual {v6, v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_5
    move v6, v7

    goto :goto_3

    :cond_6
    move v9, v7

    goto :goto_4

    :sswitch_4
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput v10, v3, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    iput v6, v3, Landroid/net/wifi/WifiConfiguration;->channel:I

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedMaxClient:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v6

    iput-boolean v6, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityTypeIndex:I

    packed-switch v6, :pswitch_data_0

    :cond_7
    :goto_5
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    :cond_8
    sget-boolean v6, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->DBG:Z

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_9

    if-ne v5, v10, :cond_b

    :cond_9
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v6, 0x258

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_a
    :goto_6
    sput-boolean v9, Lcom/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-wide/16 v6, 0x258

    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_0
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    goto :goto_5

    :pswitch_1
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->set(I)V

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->password:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->password:Ljava/lang/String;

    iput-object v6, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_5

    :pswitch_2
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v8, 0x4

    invoke-virtual {v6, v8}, Ljava/util/BitSet;->set(I)V

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->set(I)V

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->length()I

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->password:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->password:Ljava/lang/String;

    iput-object v6, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_5

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_6

    :cond_b
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v4

    const/16 v6, 0xc

    if-eq v4, v6, :cond_c

    const/16 v6, 0xd

    if-ne v4, v6, :cond_a

    :cond_c
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    const-wide/16 v6, 0x258

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_6

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_6

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0659 -> :sswitch_0
        0x7f0b065e -> :sswitch_1
        0x7f0b0661 -> :sswitch_2
        0x7f0b0662 -> :sswitch_3
        0x7f0b0672 -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1    # Landroid/os/Bundle;

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v4, 0x7f040296

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->setContentView(I)V

    const v4, 0x7f0b065a

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    move-object v1, p0

    iput-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/settings/Utils$LengthFilter;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/settings/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0658

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSsid:Landroid/widget/EditText;

    const v4, 0x7f0b0602

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    const v4, 0x7f0b0659

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    const v4, 0x7f0b0672

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSaveBtn:Landroid/widget/Button;

    sget-boolean v4, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->DBG:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSaveBtn:Landroid/widget/Button;

    const-string v5, "Save & Turn on Hotspot"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v5, 0x3

    iput v5, v4, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedMaxClient:I

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityTypeIndex:I

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v5, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mHideSsid:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const-string v5, "Hide SSID"

    invoke-virtual {v4, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSsid:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mPassword:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v4, 0x7f0b0663

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v4, 0x7f0b0661

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0b0662

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v4, 0x7f0b0664

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;

    iput v8, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I

    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I

    iget v5, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I

    add-int/2addr v4, v5

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I

    iget v5, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_2
    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    aget-object v5, v5, v2

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSaveBtn:Landroid/widget/Button;

    const-string v5, "Save"

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSsid:Landroid/widget/EditText;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TestAP_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I

    if-lez v4, :cond_4

    iget v2, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I

    :goto_3
    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I

    iget v5, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I

    sub-int v6, v2, v6

    aget-object v5, v5, v6

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mContext:Landroid/content/Context;

    const v5, 0x1090008

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;

    invoke-direct {v0, v4, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v4, 0x1090009

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;

    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;

    iget v5, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    iget v5, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityTypeIndex:I

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const v4, 0x7f0b0666

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    iput-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->maxClientSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->maxClientSpinner:Landroid/widget/Spinner;

    iget v5, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedMaxClient:I

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->showSecurityFields()V

    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v4, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    const/4 v2, 0x0

    :goto_5
    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_5

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;

    aget-object v4, v4, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;

    invoke-virtual {v4, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_4

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .param p2    # Landroid/view/View;
    .param p3    # I
    .param p4    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iput p3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSecurityTypeIndex:I

    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->showSecurityFields()V

    goto :goto_0

    :sswitch_1
    iput p3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast2gChannel:I

    iput p3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I

    iput v0, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast5gChannel:I

    goto :goto_0

    :sswitch_3
    iput p3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedMaxClient:I

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b065a -> :sswitch_0
        0x7f0b0663 -> :sswitch_1
        0x7f0b0664 -> :sswitch_2
        0x7f0b0666 -> :sswitch_3
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    return-void
.end method
