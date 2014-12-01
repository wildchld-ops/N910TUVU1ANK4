.class Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiApTestConfigure.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const v7, 0x1090009

    const v6, 0x1090008

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "plugged"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # invokes: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->getChgType()Z
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$000(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I
    invoke-static {v3, v5}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$102(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;I)I

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$100(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$300(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v5

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/String;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$202(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;[Ljava/lang/String;)[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$100(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$200(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$400(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$300(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$100(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v1

    :goto_1
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$100(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$300(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$200(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$500(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I
    invoke-static {v5}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$100(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v5

    sub-int v5, v1, v5

    aget-object v4, v4, v5

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$600(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$200(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$700(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast5gChannel:I
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$800(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v3

    const/16 v4, 0xe

    if-le v3, v4, :cond_2

    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$200(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast5gChannel:I
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$800(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$200(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$700(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast5gChannel:I
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$800(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v4

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I
    invoke-static {v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$902(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;I)I

    :cond_2
    :goto_3
    return-void

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I
    invoke-static {v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$102(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;I)I

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$300(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$300(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$202(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$100(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v1

    :goto_4
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCharger:I
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$100(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mNumBasedOnCountry:I
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$300(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$200(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$500(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$600(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->wifiAp5gItem:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$200(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v6, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v0, v7}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$700(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_3

    :cond_6
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel2g:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$1100(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->CheckBoxChannel5g:Lcom/sec/android/touchwiz/widget/TwCheckBox;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$1000(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Lcom/sec/android/touchwiz/widget/TwCheckBox;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel5g:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$700(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/widget/Spinner;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mLast2gChannel:I
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$1300(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v4

    # setter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I
    invoke-static {v3, v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$902(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;I)I

    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mChannel:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$1200(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)Landroid/widget/Spinner;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure$1;->this$0:Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;

    # getter for: Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->mSelectedChannel:I
    invoke-static {v4}, Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;->access$900(Lcom/android/settings/wifi/mobileap/WifiApTestConfigure;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3
.end method
