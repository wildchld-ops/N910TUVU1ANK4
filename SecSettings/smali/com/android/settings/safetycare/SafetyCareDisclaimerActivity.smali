.class public Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;
.super Landroid/app/Activity;
.source "SafetyCareDisclaimerActivity.java"


# instance fields
.field private mCheck1:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheck2:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheck3:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheck4:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mEmerOnly:Z

.field private mFrom:I

.field private mTextV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mFrom:I

    iput-boolean v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mEmerOnly:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V
    .locals 0
    .param p0    # Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->prepareFinishActivity()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Z
    .locals 1
    .param p0    # Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    iget-boolean v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mEmerOnly:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck1:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck2:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck3:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0    # Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck4:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method private prepareFinishActivity()V
    .locals 0

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public initTextBox()V
    .locals 2

    const v0, 0x7f0b013f

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x1080846

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1    # Landroid/os/Bundle;

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v9, "from"

    const/4 v10, 0x0

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mFrom:I

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.android.GeoLookout"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mEmerOnly:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mFrom:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mEmerOnly:Z

    :cond_1
    const v9, 0x7f091a8e

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setTitle(I)V

    const v9, 0x7f040214

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setContentView(I)V

    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "safety_care_disaster_user_agree"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-boolean v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mEmerOnly:Z

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "safety_care_user_agree"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_4

    const/4 v0, 0x1

    :cond_2
    :goto_2
    if-eqz v0, :cond_7

    const v9, 0x7f0b0522

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v9, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$1;

    invoke-direct {v9, p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$1;-><init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v9, 0x7f0b0523

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    new-instance v9, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$2;

    invoke-direct {v9, p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$2;-><init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    const v9, 0x7f0b013f

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Landroid/view/View;->setOverScrollMode(I)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0b051b

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mTextV:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f091aaa

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091aab

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091aac

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091aad

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091aae

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mTextV:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const v9, 0x7f0b0527

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck1:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const v9, 0x7f0b0524

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck2:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck2:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    const v9, 0x7f0b0525

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck3:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck3:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    const v9, 0x7f0b0526

    invoke-virtual {p0, v9}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck4:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck4:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck1:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v10, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;

    invoke-direct {v10, p0, v5}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$3;-><init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;Landroid/widget/Button;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck2:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v10, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$4;

    invoke-direct {v10, p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$4;-><init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck3:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v10, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$5;

    invoke-direct {v10, p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$5;-><init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck4:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v10, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$6;

    invoke-direct {v10, p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity$6;-><init>(Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;)V

    invoke-virtual {v9, v10}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->initTextBox()V

    :goto_4
    return-void

    :catch_0
    move-exception v2

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mEmerOnly:Z

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_5
    iget-boolean v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mEmerOnly:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const v10, 0x7f091a9f

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091aa0

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091aa1

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091aa2

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091aa3

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091aa4

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091aa5

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091aa6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091aa7

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091aa8

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mTextV:Landroid/widget/TextView;

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_6
    const v9, 0x7f091a93

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091a94

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091a95

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091a96

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091a97

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091a98

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091a99

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091a9a

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091a9b

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091a9c

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091a9d

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "<br><br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const v10, 0x7f091a9e

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "\n"

    const-string v10, "<br>"

    invoke-virtual {v7, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mTextV:Landroid/widget/TextView;

    invoke-static {v8}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mTextV:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto/16 :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->finish()V

    goto/16 :goto_4
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1    # I
    .param p2    # Landroid/view/KeyEvent;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->prepareFinishActivity()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->finish()V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->prepareFinishActivity()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->finish()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public setCheckAll()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck2:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck3:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck4:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    return-void
.end method

.method public setOKButton()V
    .locals 3

    const/4 v2, 0x0

    const v1, 0x7f0b0523

    invoke-virtual {p0, v1}, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck1:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck2:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck3:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck4:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/safetycare/SafetyCareDisclaimerActivity;->mCheck1:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
