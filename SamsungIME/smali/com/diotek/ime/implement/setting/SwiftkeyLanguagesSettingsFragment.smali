.class public Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SwiftkeyLanguagesSettingsFragment.java"


# static fields
.field public static final BASE_AVAILABLE:I = 0x3e8

.field public static final BASE_DOWNLOADED:I = 0x1

.field private static final REQUEST_CODE:I

.field private static isChineseInstalled:Z

.field private static mDeletingLPList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static mPopupWindow:Landroid/widget/PopupWindow;

.field public static sharedPreferences:Landroid/content/SharedPreferences;


# instance fields
.field private mActionDeleteView:Landroid/widget/TextView;

.field mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field public mIsHandwritingSearch:Z

.field public mIsVOHWRenable:Z

.field public mLanguagePreferenceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;",
            ">;"
        }
    .end annotation
.end field

.field private mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mParentLayout:Landroid/widget/FrameLayout;

.field private mPhotosClickListener:Landroid/view/View$OnClickListener;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field public mTotalLanguageCount:I

.field private mTouchViewUndoListener:Landroid/view/View$OnTouchListener;

.field private mViewUndo:Landroid/view/View;

.field mainScreen:Landroid/preference/PreferenceScreen;

.field private mainView:Landroid/view/View;

.field private misTablet:Z

.field private settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

.field private volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z

    sput-object v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    sput-object v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsVOHWRenable:Z

    iput v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    iput-boolean v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->misTablet:Z

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mListItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$2;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTouchViewUndoListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$3;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPhotosClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    return-object v0
.end method

.method static synthetic access$100()Landroid/widget/PopupWindow;
    .locals 1

    sget-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;
    .locals 0

    sput-object p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    sput-object p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    return-void
.end method

.method static synthetic access$400(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->notifyUpdateSelectedLanguageList()V

    return-void
.end method

.method static synthetic access$500(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTouchViewUndoListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mViewUndo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mViewUndo:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPhotosClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V
    .locals 4

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getInstance(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->volpm:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-virtual {v1, v0}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->removeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private getSystemLanguageChangedListener()Landroid/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$5;

    invoke-direct {v0, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$5;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mSystemLanguageChangedListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method private notifyUpdateSelectedLanguageList()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "SamsungIME.UpdateAvailableLanguageAction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const/4 v5, -0x1

    if-ne p2, v5, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Delete is Done"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    monitor-enter p0

    :try_start_0
    sget-object v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const-string v5, "mDeletingLPList"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getCharSequenceArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    sput-object v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f09002a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    const v5, 0x7f09002b

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030002

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v5, "SamsungIME"

    const-string v6, "popupView is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_2
    const v5, 0x7f080009

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mActionDeleteView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mActionDeleteView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mActionDeleteView:Landroid/widget/TextView;

    const-string v6, "%d"

    sget-object v7, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;

    invoke-direct {v5, p0, v0, v4, v3}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$4;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;Landroid/view/View;II)V

    invoke-virtual {v0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    if-eqz v7, :cond_0

    :try_start_0
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0b001e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x102000a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f0800c0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    const v8, 0x7f0800c1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v4

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/diotek/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f020b24

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    const/4 v9, -0x1

    int-to-float v10, v6

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mParentLayout:Landroid/widget/FrameLayout;

    iget-object v8, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    invoke-virtual {v5, v7, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/16 v13, 0x400

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    iput-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v9}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_9

    const-string v9, "handwriting"

    invoke-virtual {v4, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    :goto_0
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v9

    iput-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v9}, Lcom/diotek/ime/framework/common/InputManagerImpl;->newInstance(Landroid/content/Context;)Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v9

    iput-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    invoke-virtual {v7}, Landroid/app/NotificationManager;->cancelAll()V

    :cond_0
    const v9, 0x7f0300a6

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v9, "select_swiftkey_language_list"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    iput-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v9

    iput-boolean v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsVOHWRenable:Z

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v9

    iput-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    :cond_1
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v10, "TABLET_MODE"

    invoke-interface {v9, v10, v12}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->misTablet:Z

    :cond_2
    iget-boolean v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->misTablet:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v9}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v13, v13}, Landroid/view/Window;->setFlags(II)V

    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {p0, v9}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v9, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_4
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v9}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v11}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    const v9, 0x7f0e002d

    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setTitle(I)V

    :cond_5
    iget-boolean v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsVOHWRenable:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v9}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    :cond_6
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v9

    sput-object v9, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-virtual {p0, v11}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->rebuildLanguageList(Z)V

    if-nez p1, :cond_7

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v9}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string v9, "first_swiftkey_download_list_execution"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string v9, "swiftkey_download_list_execution"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v5, :cond_a

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v9}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->showListUpdateGuideDialog()V

    :cond_7
    :goto_1
    :try_start_0
    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.samsung.inputmethod"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    sput-boolean v9, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    :goto_2
    return-void

    :cond_9
    iput-boolean v12, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    goto/16 :goto_0

    :cond_a
    if-eqz v6, :cond_7

    iget-object v9, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-virtual {v9}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;->updateLPlist()V

    goto :goto_1

    :catch_0
    move-exception v3

    sput-boolean v12, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const v1, 0x7f030080

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment$1;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v1, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainView:Landroid/view/View;

    return-object v1
.end method

.method public onPause()V
    .locals 8

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v4, :cond_3

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_3

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->dismiss()V

    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/touchtype_fluency/util/LanguagePack;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-interface {v2}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    invoke-virtual {v3, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    iget-object v4, p0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->isUseVOResourceManager()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, v2}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->deleteLanguage(Lcom/touchtype_fluency/util/LanguagePack;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    sput-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->notifyUpdateSelectedLanguageList()V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->rebuildLanguageList(Z)V

    :cond_3
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public rebuildLanguageList(Z)V
    .locals 26

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    :cond_0
    if-eqz p1, :cond_1

    const v2, 0x7f0300a6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    :cond_1
    const-string v2, "select_swiftkey_language_list"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_Sip_ConfigLanguageList"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    const/16 v16, 0x1

    :goto_0
    const-string v2, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/CheckBoxPreference;

    if-eqz v11, :cond_2

    if-nez v16, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getTotalSupportLanguageList()V

    :cond_3
    const/4 v8, 0x0

    const/16 v20, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v20

    if-eqz v20, :cond_4

    const-string v2, "default_keyboard_language"

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->initLanguageSettingsWithSystemLocale()Z

    const-string v2, "0x%08x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    move-object/from16 v23, v0

    const-string v24, "INPUT_LANGUAGE"

    const v25, 0x656e4742

    invoke-interface/range {v23 .. v25}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;I)I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    sget-boolean v2, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "SamsungIME"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultLanguage is null. create defaultLanguageID = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v18

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v2}, Lcom/diotek/ime/framework/engine/swiftkey/SwiftkeyWrapper;->getLanguagePackManager(Landroid/content/Context;)Lcom/touchtype_fluency/util/LanguagePackManager;

    move-result-object v18

    :cond_5
    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/util/LanguagePackManager;->getAllLanguages()Ljava/util/List;

    move-result-object v7

    invoke-virtual/range {v18 .. v18}, Lcom/touchtype_fluency/util/LanguagePackManager;->getEnabledLanguages()Ljava/util/List;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    invoke-static {v2}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getLanguagePackManager(Landroid/content/Context;)Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    move-result-object v22

    const/4 v14, 0x0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_7

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getDefaultEnglishLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v2

    invoke-virtual {v2}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    const-string v2, "en"

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object v14, v3

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    if-eqz v12, :cond_6

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_7
    const/16 v19, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_8
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/touchtype_fluency/util/LanguagePack;

    if-eqz v8, :cond_a

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;->getLanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    if-eqz v12, :cond_a

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    :cond_9
    if-eqz v14, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getLocaleLanguage()Lcom/diotek/ime/framework/common/Language;

    move-result-object v4

    invoke-virtual {v4}, Lcom/diotek/ime/framework/common/Language;->getId()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/diotek/ime/framework/common/InputManager;->isLatinLanguageID(I)Z

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v2}, Lcom/touchtype_fluency/util/LanguagePackManager;->enableLanguage(Lcom/touchtype_fluency/util/LanguagePack;Z)Z

    :cond_a
    sget-boolean v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->isChineseInstalled:Z

    if-eqz v2, :cond_b

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v4, "zh"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v4, v6}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageID(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mIsHandwritingSearch:Z

    if-eqz v2, :cond_d

    if-eqz v22, :cond_d

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->getVOlangaueName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/visionobjects/resourcemanager/VOLanguagePackManager;->get(Ljava/lang/String;)Lcom/visionobjects/resourcemanager/VOLanguagePack;

    move-result-object v21

    if-eqz v21, :cond_8

    invoke-virtual/range {v21 .. v21}, Lcom/visionobjects/resourcemanager/VOLanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    :cond_d
    add-int/lit8 v19, v19, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    if-eqz v2, :cond_12

    const/4 v1, 0x0

    if-eqz v16, :cond_e

    if-eqz v16, :cond_16

    if-eqz v5, :cond_16

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    :goto_3
    if-eqz v1, :cond_f

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_17

    add-int/lit8 v2, v19, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    :cond_f
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mLanguagePreferenceMap:Ljava/util/HashMap;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    sget-object v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v2

    if-eqz v2, :cond_11

    sget-object v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getLanguage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getCountry()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-interface {v4, v6, v0}, Lcom/diotek/ime/framework/common/InputManager;->translatelanguageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    sget-object v2, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mDeletingLPList:Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mainScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    :cond_11
    if-eqz v16, :cond_12

    if-eqz v1, :cond_12

    const-string v2, "SETTINGS_DEFAULT_USE_SYSTEM_LANGUAGE"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mTotalLanguageCount:I

    goto/16 :goto_2

    :cond_13
    const/16 v16, 0x0

    goto/16 :goto_0

    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->getSystemLanguageChangedListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v11}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    goto/16 :goto_1

    :cond_15
    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;ZZ)V

    goto/16 :goto_3

    :cond_16
    new-instance v1, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->settingActivity:Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;

    sget-object v4, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Lcom/touchtype_fluency/util/LanguagePack;->isDownloaded()Z

    move-result v6

    invoke-direct/range {v1 .. v6}, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagePreference;-><init>(Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettings;Lcom/touchtype_fluency/util/LanguagePack;Landroid/content/SharedPreferences;ZZ)V

    goto/16 :goto_3

    :cond_17
    move/from16 v0, v19

    add-int/lit16 v2, v0, 0x3e8

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setOrder(I)V

    goto/16 :goto_4

    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/diotek/ime/implement/setting/SwiftkeyLanguagesSettingsFragment;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->updateSupportLanguageListforSwiftkey()V

    :cond_19
    return-void
.end method
