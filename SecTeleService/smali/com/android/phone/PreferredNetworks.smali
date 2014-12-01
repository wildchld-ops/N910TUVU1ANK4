.class public Lcom/android/phone/PreferredNetworks;
.super Landroid/app/Activity;
.source "PreferredNetworks.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PreferredNetworks$ProgressThread;
    }
.end annotation


# static fields
.field public static mSimId:I


# instance fields
.field final app:Lcom/android/phone/PhoneGlobals;

.field private isDialogShown:Z

.field private mArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PreferredNetworkListInfo;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mOperatorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/phone/PreferredNetworks;->mSimId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->app:Lcom/android/phone/PhoneGlobals;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    new-instance v0, Lcom/android/phone/PreferredNetworks$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredNetworks$1;-><init>(Lcom/android/phone/PreferredNetworks;)V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/phone/PreferredNetworks$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PreferredNetworks$2;-><init>(Lcom/android/phone/PreferredNetworks;)V

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PreferredNetworks;)Z
    .locals 1
    .param p0    # Lcom/android/phone/PreferredNetworks;

    iget-boolean v0, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/PreferredNetworks;Z)Z
    .locals 0
    .param p0    # Lcom/android/phone/PreferredNetworks;
    .param p1    # Z

    iput-boolean p1, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/PreferredNetworks;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0    # Lcom/android/phone/PreferredNetworks;
    .param p1    # Landroid/os/AsyncResult;

    invoke-direct {p0, p1}, Lcom/android/phone/PreferredNetworks;->displayList(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/PreferredNetworks;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0    # Lcom/android/phone/PreferredNetworks;

    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/PreferredNetworks;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/PreferredNetworks;

    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private displayList(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1    # Landroid/os/AsyncResult;

    if-nez p1, :cond_0

    const-string v3, "PreferredNetworks"

    const-string v4, "AsyncResult is null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    const-string v3, "PreferredNetworks"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AsyncResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mArrayList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PreferredNetworkListInfo;

    iget-object v3, v3, Lcom/android/internal/telephony/PreferredNetworkListInfo;->mOperator:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090003

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-direct {v2, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    const v3, 0x7f0a0033

    invoke-virtual {p0, v3}, Lcom/android/phone/PreferredNetworks;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/PreferredNetworks;->saveIndex(I)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/phone/PhoneGlobals;->setPreferredNetworksListCount(I)V

    goto :goto_0
.end method

.method private saveIndex(I)V
    .locals 4
    .param p1    # I

    iget-object v2, p0, Lcom/android/phone/PreferredNetworks;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/PreferredNetworks;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f040078

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworks;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v1

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "SIM_SLOT"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/phone/PreferredNetworks;->mSimId:I

    :goto_0
    const-string v1, "PreferredNetworks"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM ID : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/phone/PreferredNetworks;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/PreferredNetworks;->app:Lcom/android/phone/PhoneGlobals;

    sget v1, Lcom/android/phone/PreferredNetworks;->mSimId:I

    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/PreferredNetworks;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_1
    return-void

    :cond_1
    sget v1, Lcom/android/phone/MobileNetworkSettings;->mSimId:I

    sput v1, Lcom/android/phone/PreferredNetworks;->mSimId:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/phone/PreferredNetworks;->app:Lcom/android/phone/PhoneGlobals;

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/phone/PreferredNetworks;->mPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .param p1    # I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0906fc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/phone/PreferredNetworks$ProgressThread;

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/phone/PreferredNetworks$ProgressThread;-><init>(Lcom/android/phone/PreferredNetworks;Landroid/os/Handler;)V

    invoke-virtual {v2}, Lcom/android/phone/PreferredNetworks$ProgressThread;->start()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1    # Landroid/view/Menu;

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "feature_chn_duos"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v1

    if-le v1, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0xc8

    const v2, 0x7f0906fb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v4, v1, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f020005

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "PreferredNetworks"

    const-string v1, "onDestroy ############."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    const-string v1, "PreferredNetworks"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->finish()V

    goto :goto_0

    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/PreferredNetworkDetailView;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type_action"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "index"

    iget-object v3, p0, Lcom/android/phone/PreferredNetworks;->mOperatorList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "name"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "id"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "act_gsm"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "act_gsm_compact"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "act_utran"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/phone/PreferredNetworks;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    const/4 v3, 0x1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/internal/telephony/MultiSimManager;->getInsertedSimNum()I

    move-result v0

    if-le v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/PreferredNetworks;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sim_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/phone/PreferredNetworks;->mSimId:I

    sget v0, Lcom/android/phone/PreferredNetworks;->mSimId:I

    if-nez v0, :cond_1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredNetworks;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->telephonyManager:Landroid/telephony/TelephonyManager;

    :goto_0
    iget-object v0, p0, Lcom/android/phone/PreferredNetworks;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sget v0, Lcom/android/phone/PreferredNetworks;->mSimId:I

    invoke-static {p0, v0}, Lcom/android/internal/telephony/MultiSimManager;->isActivatedSimSlot(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/phone/PreferredNetworks;->showDialog(I)V

    iput-boolean v3, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v0, "phone2"

    invoke-virtual {p0, v0}, Lcom/android/phone/PreferredNetworks;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/phone/PreferredNetworks;->telephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/phone/PreferredNetworks;->showDialog(I)V

    iput-boolean v3, p0, Lcom/android/phone/PreferredNetworks;->isDialogShown:Z

    goto :goto_1
.end method
