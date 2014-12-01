.class public Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;
.super Landroid/app/Activity;
.source "CheckDefaultSmsAppsActivity.java"


# static fields
.field private static final REQUEST_CODE_CHANGE_DEFAULT:I = 0x2329

.field private static final TAG:Ljava/lang/String; = "Mms/CheckDefaultSmsAppsActivity"

.field public static mIsRunning:Z

.field private static mOldOrientation:I


# instance fields
.field private mAniImageView:Landroid/widget/ImageView;

.field private mAppIcon1:Landroid/widget/ImageView;

.field private mAppIcon2:Landroid/widget/ImageView;

.field private mAppIcon3:Landroid/widget/ImageView;

.field private mAppIcon4:Landroid/widget/ImageView;

.field private mAppIcon5:Landroid/widget/ImageView;

.field private mAppIcon6:Landroid/widget/ImageView;

.field private mAppIcon7:Landroid/widget/ImageView;

.field private mCancelButton:Landroid/widget/Button;

.field private mChangeDefaultButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDetailInfoString:Ljava/lang/String;

.field private mDetailInfoTextView:Landroid/widget/TextView;

.field private mFullPath:Ljava/lang/StringBuilder;

.field private mIntent:Landroid/content/Intent;

.field private mIsCalledInside:Ljava/lang/Boolean;

.field private mIsFromScover:Ljava/lang/Boolean;

.field private mIsOpened:Z

.field private mIsVzwOperator:Z

.field private mLocale:Ljava/lang/String;

.field private mNeedResultCode:Ljava/lang/Boolean;

.field private mRequestInfoTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsRunning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-boolean v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsOpened:Z

    iput-boolean v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsVzwOperator:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsOpened:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsOpened:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Ljava/lang/StringBuilder;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mFullPath:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mNeedResultCode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsFromScover:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAniImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method private getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private initResourceLayout()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v2, "Mms/CheckDefaultSmsAppsActivity"

    const-string v3, "initResourceLayout()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mLocale:Ljava/lang/String;

    const v2, 0x7f0b00bf

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mDetailInfoTextView:Landroid/widget/TextView;

    const v2, 0x7f0b00c0

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mRequestInfoTextView:Landroid/widget/TextView;

    const v2, 0x7f0b00c1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mChangeDefaultButton:Landroid/widget/Button;

    const v2, 0x7f0b00c2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mCancelButton:Landroid/widget/Button;

    iget-boolean v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsVzwOperator:Z

    if-nez v2, :cond_0

    const v2, 0x7f0b00b7

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAniImageView:Landroid/widget/ImageView;

    const v2, 0x7f0b00b8

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon1:Landroid/widget/ImageView;

    const v2, 0x7f0b00b9

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon2:Landroid/widget/ImageView;

    const v2, 0x7f0b00ba

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon3:Landroid/widget/ImageView;

    const v2, 0x7f0b00bb

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon4:Landroid/widget/ImageView;

    const v2, 0x7f0b00bc

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon5:Landroid/widget/ImageView;

    const v2, 0x7f0b00bd

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon6:Landroid/widget/ImageView;

    const v2, 0x7f0b00be

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon7:Landroid/widget/ImageView;

    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0c0000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsCalledInside:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsVzwOperator:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mDetailInfoTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0475

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-boolean v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsVzwOperator:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mRequestInfoTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0472

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0182

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    aput-object v0, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v2, "en"

    iget-object v3, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mLocale:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mRequestInfoTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41b80000

    invoke-virtual {v2, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_1
    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mChangeDefaultButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$1;-><init>(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mCancelButton:Landroid/widget/Button;

    new-instance v3, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;

    invoke-direct {v3, p0}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$2;-><init>(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mDetailInfoTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0471

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v0, v5, v9

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mDetailInfoTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mDetailInfoString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mRequestInfoTextView:Landroid/widget/TextView;

    const/high16 v3, 0x41900000

    invoke-virtual {v2, v8, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1
.end method

.method private makeInfoPathString()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mFullPath:Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mFullPath:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mFullPath:Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mFullPath:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0474

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mFullPath:Ljava/lang/StringBuilder;

    const-string v1, " > "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mFullPath:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c046e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method private setImageIcons()V
    .locals 3

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.android.calendar"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.android.calendar"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.android.contacts"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/mms/util/PackageInfo;->JCONTACT:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.gallery3d"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon3:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.gallery3d"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.app.memo"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon4:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.memo"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.widgetapp.diotek.smemo"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "android.intent.action.PENMEMO_ATTACH"

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon4:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.widgetapp.diotek.smemo"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.snotebook"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon4:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.snotebook"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon5:Landroid/widget/ImageView;

    const-string v1, "com.sec.android.app.camera"

    invoke-direct {p0, v1}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.voicerecorder"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon6:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.voicerecorder"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.android.browser"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon7:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.android.browser"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_6
    return-void

    :cond_9
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.google.android.apps.maps"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon1:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.google.android.apps.maps"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon2:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.android.contacts"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_b
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.cooliris.media"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon3:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.cooliris.media"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_c
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.android.gallery3d"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon3:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.android.gallery3d"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_d
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.android.email"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon3:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.android.email"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.snote"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon4:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.snote"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_3

    :cond_f
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.vlingo.midas"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon5:Landroid/widget/ImageView;

    const-string v1, "com.vlingo.midas"

    invoke-direct {p0, v1}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    :cond_10
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.voicenote"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon6:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.voicenote"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_11
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon6:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020394

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_12
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.android.chrome"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon6:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.android.chrome"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_13
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "com.sec.android.app.sbrowser"

    invoke-static {v0, v1}, Lcom/android/mms/util/PackageInfo;->isInstalledPkg(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mAppIcon7:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v2, "com.sec.android.app.sbrowser"

    invoke-static {v1, v2}, Lcom/android/mms/ui/MessageUtils;->getApplicationIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x1

    const-string v2, "Mms/CheckDefaultSmsAppsActivity"

    const-string v3, "onActivityResult()"

    invoke-static {v2, v3}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsOpened:Z

    const/16 v2, 0x2329

    if-ne p1, v2, :cond_0

    if-ne p2, v5, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mNeedResultCode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "setDefault"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v5, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    if-eqz v2, :cond_0

    const-string v2, "android.intent.action.MAIN"

    iget-object v3, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v4, Lcom/android/mms/ui/ConversationComposer;->sIsBackToMsg:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v2

    if-eqz v2, :cond_2

    sput-boolean v4, Lcom/android/mms/ui/BoxListViewActivity;->sIsBackToMsg:Z

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Mms/CheckDefaultSmsAppsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not start activity with SecurityException : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/mms/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v0, "Mms/CheckDefaultSmsAppsActivity"

    const-string v1, "onBackPressed()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0473

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mFullPath:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "is_running"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v5, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsRunning:Z

    :cond_0
    const-string v0, "android.intent.action.MAIN"

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "null"

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsFromScover:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    sput-boolean v5, Lcom/android/mms/ui/ConversationComposer;->sIsBackToMsg:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v0

    if-eqz v0, :cond_2

    sput-boolean v5, Lcom/android/mms/ui/BoxListViewActivity;->sIsBackToMsg:Z

    :cond_2
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "is_running"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    sput-boolean v5, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsRunning:Z

    :cond_3
    iget-object v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const-string v0, "Mms/CheckDefaultSmsAppsActivity"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    sget v1, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mOldOrientation:I

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    sput v0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mOldOrientation:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsVzwOperator:Z

    if-eqz v0, :cond_2

    const-string v0, "Mms/CheckDefaultSmsAppsActivity"

    const-string v1, "mIsOperator is true"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f04002d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    :goto_1
    invoke-direct {p0}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->initResourceLayout()V

    invoke-direct {p0}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->makeInfoPathString()V

    iget-boolean v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsVzwOperator:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->setImageIcons()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$4;-><init>(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    const v0, 0x7f04002c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsVzwOperator:Z

    if-eqz v0, :cond_4

    const-string v0, "Mms/CheckDefaultSmsAppsActivity"

    const-string v1, "mIsOperator is true"

    invoke-static {v0, v1}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f04002e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_1

    :cond_4
    const v0, 0x7f04002b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    const-string v1, "Mms/CheckDefaultSmsAppsActivity"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    sput v1, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mOldOrientation:I

    const-string v1, "VZW"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsVzwOperator:Z

    sget v1, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mOldOrientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsVzwOperator:Z

    if-eqz v1, :cond_2

    const-string v1, "Mms/CheckDefaultSmsAppsActivity"

    const-string v2, "mIsOperator is true"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f04002d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-string v1, "isInsideCall"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsCalledInside:Ljava/lang/Boolean;

    const-string v1, "isNeedResultCode"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mNeedResultCode:Ljava/lang/Boolean;

    const-string v1, "detailInfo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mDetailInfoString:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    iput-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "fromScover"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsFromScover:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/mms/ui/ConversationComposer;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setMultiWindowStyle(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    const-string v2, "is_running"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsRunning:Z

    :cond_0
    invoke-direct {p0}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->initResourceLayout()V

    invoke-direct {p0}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->makeInfoPathString()V

    iget-boolean v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsVzwOperator:Z

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->setImageIcons()V

    :cond_1
    return-void

    :cond_2
    const v1, 0x7f04002c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsVzwOperator:Z

    if-eqz v1, :cond_4

    const-string v1, "Mms/CheckDefaultSmsAppsActivity"

    const-string v2, "mIsOperator is true"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f04002e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0

    :cond_4
    const v1, 0x7f04002b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 5

    const/4 v3, 0x1

    const-string v1, "Mms/CheckDefaultSmsAppsActivity"

    const-string v2, "onResume()"

    invoke-static {v1, v2}, Lcom/android/mms/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/android/mms/util/TelephonyPermission;->getInstance(Landroid/content/Context;)Lcom/android/mms/util/TelephonyPermission;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/util/TelephonyPermission;->isDefaultSmsApp()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mNeedResultCode:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "setDefault"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.MAIN"

    iget-object v2, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sput-boolean v3, Lcom/android/mms/ui/ConversationComposer;->sIsBackToMsg:Z

    invoke-static {}, Lcom/android/mms/MmsConfig;->getEnableFolderView()Z

    move-result v1

    if-eqz v1, :cond_2

    sput-boolean v3, Lcom/android/mms/ui/BoxListViewActivity;->sIsBackToMsg:Z

    :cond_2
    iget-object v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    sget-boolean v1, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsRunning:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsRunning:Z

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;->mIsVzwOperator:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$3;

    invoke-direct {v2, p0}, Lcom/android/mms/settings/CheckDefaultSmsAppsActivity$3;-><init>(Lcom/android/mms/settings/CheckDefaultSmsAppsActivity;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
