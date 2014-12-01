.class public Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;
.super Landroid/app/Activity;
.source "PersonalPageTutorialAppActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;
    }
.end annotation


# instance fields
.field private mNextBtnArea:Landroid/widget/LinearLayout;

.field mPKGAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field final pkgList:Ljava/util/ArrayList;
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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->pkgList:Ljava/util/ArrayList;

    return-void
.end method

.method private FinishTutorialPage()V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "PersonalPageTutorialAppActivity"

    const-string v3, "UpdateTutorialPage: App -> Finish "

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "pref_pp_tutorial_do_not_show_again"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private UpdateTutorialPage()V
    .locals 2

    const-string v0, "PersonalPageTutorialAppActivity"

    const-string v1, "UpdateTutorialPage: App -> Add "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/android/settings/personalpage/PersonalPageTutorialAddActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->FinishTutorialPage()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->UpdateTutorialPage()V

    return-void
.end method

.method private initViewsForAPP()V
    .locals 21

    const v2, 0x7f04018f

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(I)V

    const v2, 0x7f0b03db

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$1;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v2, 0x7f0a00c3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    move-object v8, v9

    array-length v13, v8

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v13, :cond_0

    aget-object v19, v8, v12

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->pkgList:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :catch_0
    move-exception v10

    const-string v2, "PersonalPageTutorialAppActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not installed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    new-instance v2, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;

    const v5, 0x7f040188

    const v6, 0x7f0b03cd

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->pkgList:Ljava/util/ArrayList;

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity$PersonalPagePKGArrayAdapter;-><init>(Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;Landroid/content/Context;IILjava/util/ArrayList;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPKGAdapter:Landroid/widget/ArrayAdapter;

    const v2, 0x102000a

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPKGAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v14, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v2, "measure_is_required"

    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v20, 0x0

    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPKGAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v11, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPKGAdapter:Landroid/widget/ArrayAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v11, v3, v14}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v20, v20, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    invoke-virtual {v14}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v2

    invoke-virtual {v14}, Landroid/widget/AdapterView;->getCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int v2, v2, v20

    move-object/from16 v0, v16

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/widget/AdapterView;->setFocusable(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/16 v1, 0x400

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "klimt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v0, "PersonalPageTutorialAppActivity"

    const-string v1, "PersonalPage Tutorial create"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/personalpage/PersonalPageTutorialAppActivity;->initViewsForAPP()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "prev_is_disclaimer"

    const v2, 0x7f0b03de

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "PersonalPageTutorialAppActivity"

    const-string v2, "UpdateTutorialPage back: App -> Discliamer "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/android/settings/personalpage/PersonalPageTutorialDisclaimerActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :goto_0
    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    const-string v1, "PersonalPageTutorialAppActivity"

    const-string v2, "UpdateTutorialPage back: App -> Welcome "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v1, Lcom/android/settings/personalpage/PersonalPageTutorial;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
