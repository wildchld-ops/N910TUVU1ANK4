.class public Lcom/diotek/ime/implement/setting/Tutorial;
.super Landroid/app/Activity;
.source "Tutorial.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final PACKAGE_NAME:Ljava/lang/String;

.field private final XT9_9:Ljava/lang/String;

.field protected mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field protected mRepository:Lcom/diotek/ime/framework/repository/Repository;

.field private mTutorialEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "com.sec.android.inputmethod"

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Tutorial;->PACKAGE_NAME:Ljava/lang/String;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v0, "XT9 V09"

    iput-object v0, p0, Lcom/diotek/ime/implement/setting/Tutorial;->XT9_9:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/diotek/ime/implement/setting/Tutorial;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mTutorialEditText:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method protected initViews()V
    .locals 15

    const/4 v14, 0x0

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getRepository()Lcom/diotek/ime/framework/repository/Repository;

    move-result-object v11

    iput-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v11, "com.sec.android.inputmethod_preferences"

    invoke-virtual {p0, v11, v14}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v11, "da_mode"

    invoke-interface {v9, v11, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v11

    const-string v12, "CscFeature_Sip_EnableLanguageToggleButton"

    invoke-virtual {v11, v12}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "TABLET_MODE"

    invoke-interface {v11, v12, v14}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v7

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v6

    const/4 v8, 0x0

    :try_start_0
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.android.app.ocr"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    :goto_0
    if-eqz v2, :cond_9

    const-string v11, "NONE"

    const-string v12, "VOHWRPANEL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_4

    const v11, 0x7f030085

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    :goto_1
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isMultiwindowPhone()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    const v11, 0x7f0800c6

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    const v11, 0x7f080084

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/EditText;

    iput-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mTutorialEditText:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mTutorialEditText:Landroid/widget/EditText;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/View;->setLongClickable(Z)V

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mTutorialEditText:Landroid/widget/EditText;

    new-instance v12, Lcom/diotek/ime/implement/setting/Tutorial$1;

    invoke-direct {v12, p0}, Lcom/diotek/ime/implement/setting/Tutorial$1;-><init>(Lcom/diotek/ime/implement/setting/Tutorial;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mTutorialEditText:Landroid/widget/EditText;

    new-instance v12, Lcom/diotek/ime/implement/setting/Tutorial$2;

    invoke-direct {v12, p0}, Lcom/diotek/ime/implement/setting/Tutorial$2;-><init>(Lcom/diotek/ime/implement/setting/Tutorial;)V

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v11, 0x7f0800c5

    invoke-virtual {p0, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_2

    if-eqz v7, :cond_2

    const v11, 0x7f0e00e8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Landroid/view/Window;->setSoftInputMode(I)V

    return-void

    :catch_0
    move-exception v3

    :try_start_1
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.android.app.ocrlite"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    goto/16 :goto_0

    :catch_1
    move-exception v4

    :try_start_2
    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.android.app.ocr3"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v8

    goto/16 :goto_0

    :catch_2
    move-exception v5

    sget-boolean v11, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "SamsungIME"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OCR apk does not exist. "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    const-string v11, "SamsungIME"

    const-string v12, "OCR apk does not exist."

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    const v11, 0x7f030087

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_5
    if-eqz v8, :cond_7

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_6

    const v11, 0x7f030084

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_6
    const v11, 0x7f030083

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_7
    if-eqz v6, :cond_8

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_8

    const v11, 0x7f030086

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_8
    const v11, 0x7f030088

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_9
    if-nez v0, :cond_f

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mRepository:Lcom/diotek/ime/framework/repository/Repository;

    const-string v12, "KOR_MODE"

    invoke-interface {v11, v12, v14}, Lcom/diotek/ime/framework/repository/Repository;->getData(Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_f

    if-nez v7, :cond_f

    const-string v11, "NONE"

    const-string v12, "VOHWRPANEL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    if-eqz v6, :cond_a

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_a

    const v11, 0x7f03008b

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_a
    const v11, 0x7f030091

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_b
    if-eqz v8, :cond_d

    if-eqz v6, :cond_c

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_c

    const v11, 0x7f03008c

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_c
    const v11, 0x7f030092

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_d
    if-eqz v6, :cond_e

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_e

    const v11, 0x7f03008d

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_e
    const v11, 0x7f030093

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_f
    const-string v11, "NONE"

    const-string v12, "VOHWRPANEL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    if-eqz v6, :cond_10

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_10

    const v11, 0x7f03008a

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_10
    const v11, 0x7f030090

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_11
    if-eqz v8, :cond_13

    if-eqz v6, :cond_12

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_12

    const v11, 0x7f030089

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_12
    const v11, 0x7f030082

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_13
    if-eqz v6, :cond_15

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingMultiFloatingKeyboard()Z

    move-result v11

    if-nez v11, :cond_15

    iget-object v11, p0, Lcom/diotek/ime/implement/setting/Tutorial;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v11}, Lcom/diotek/ime/framework/common/InputManager;->isKorMode()Z

    move-result v11

    if-eqz v11, :cond_14

    const v11, 0x7f03008f

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_14
    const v11, 0x7f03008e

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1

    :cond_15
    const v11, 0x7f030094

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/diotek/ime/implement/setting/Tutorial;->initViews()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
