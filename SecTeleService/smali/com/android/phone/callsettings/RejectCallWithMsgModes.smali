.class public Lcom/android/phone/callsettings/RejectCallWithMsgModes;
.super Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;
.source "RejectCallWithMsgModes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;
    }
.end annotation


# instance fields
.field private mCurMode:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mListViewAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

.field private mModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;-><init>()V

    const-string v0, "text"

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mCurMode:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "text"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "icon"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mModeList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mCurMode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgModes;
    .param p1    # Ljava/lang/String;

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mCurMode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Landroid/content/Context;)I
    .locals 1
    .param p0    # Landroid/content/Context;

    invoke-static {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getDisplayMode(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Ljava/util/ArrayList;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mModeList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Ljava/lang/String;)V
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgModes;
    .param p1    # Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->storeDisplayMode(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListViewAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;)Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;
    .locals 0
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgModes;
    .param p1    # Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iput-object p1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListViewAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/callsettings/RejectCallWithMsgModes;)Landroid/widget/ListView;
    .locals 1
    .param p0    # Lcom/android/phone/callsettings/RejectCallWithMsgModes;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private static getDisplayMode(Landroid/content/Context;)I
    .locals 5
    .param p0    # Landroid/content/Context;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "display_mode"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v0, 0x0

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private initLayout(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;

    const v0, 0x7f0a01de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListView:Landroid/widget/ListView;

    new-instance v0, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f040087

    iget-object v3, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mModeList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;-><init>(Lcom/android/phone/callsettings/RejectCallWithMsgModes;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListViewAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListViewAdapter:Lcom/android/phone/callsettings/RejectCallWithMsgModes$ModeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    return-void
.end method

.method public static isIconModeEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0    # Landroid/content/Context;

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string v2, "RejectCallDisplayMode"

    const-string v3, "check icon mode, context is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const-string v2, "reject_call_with_message_icon_mode"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getDisplayMode(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method private setDisplayMode(I)V
    .locals 3
    .param p1    # I

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "display_mode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private storeDisplayMode(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;

    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->setDisplayMode(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->setDisplayMode(I)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mModeList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->getDisplayMode(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->mCurMode:Ljava/lang/String;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/view/LayoutInflater;
    .param p2    # Landroid/view/ViewGroup;
    .param p3    # Landroid/os/Bundle;

    const v1, 0x7f040086

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/callsettings/RejectCallWithMsgModes;->initLayout(Landroid/view/View;)V

    return-object v0
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/phone/callsettings/CallSettingsPreferenceFragment;->onResume()V

    return-void
.end method
