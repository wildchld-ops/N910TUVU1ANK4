.class public Lcom/android/settings/quicklaunch/ShortcutPreference;
.super Landroid/preference/Preference;
.source "ShortcutPreference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/Preference;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field private static STRING_ASSIGN_APPLICATION:Ljava/lang/String;

.field private static STRING_NO_SHORTCUT:Ljava/lang/String;

.field private static sDimAlpha:I

.field private static sDimSummaryColor:Landroid/content/res/ColorStateList;

.field private static sDimTitleColor:Landroid/content/res/ColorStateList;

.field private static sRegularSummaryColor:Landroid/content/res/ColorStateList;

.field private static sRegularTitleColor:Landroid/content/res/ColorStateList;

.field private static sStaticVarsLock:Ljava/lang/Object;


# instance fields
.field private mHasBookmark:Z

.field private mShortcut:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/quicklaunch/ShortcutPreference;->sStaticVarsLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;C)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/android/settings/quicklaunch/ShortcutPreference;->sStaticVarsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/settings/quicklaunch/ShortcutPreference;->STRING_ASSIGN_APPLICATION:Ljava/lang/String;

    if-nez v1, :cond_0

    const v1, 0x7f0908e0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/quicklaunch/ShortcutPreference;->STRING_ASSIGN_APPLICATION:Ljava/lang/String;

    const v1, 0x7f0908e1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/quicklaunch/ShortcutPreference;->STRING_NO_SHORTCUT:Ljava/lang/String;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v3, 0x437f0000

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sput v1, Lcom/android/settings/quicklaunch/ShortcutPreference;->sDimAlpha:I

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-char p2, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mShortcut:C

    const v1, 0x7f0401de

    invoke-virtual {p0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2

    instance-of v1, p1, Lcom/android/settings/quicklaunch/ShortcutPreference;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    check-cast p1, Lcom/android/settings/quicklaunch/ShortcutPreference;

    iget-char v0, p1, Lcom/android/settings/quicklaunch/ShortcutPreference;->mShortcut:C

    iget-char v1, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mShortcut:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-char v1, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mShortcut:C

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    iget-char v1, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mShortcut:C

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/quicklaunch/ShortcutPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getShortcut()C
    .locals 1

    iget-char v0, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mShortcut:C

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mHasBookmark:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/quicklaunch/ShortcutPreference;->STRING_NO_SHORTCUT:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mHasBookmark:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/quicklaunch/ShortcutPreference;->STRING_ASSIGN_APPLICATION:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasBookmark()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mHasBookmark:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    const v4, 0x7f0b0498

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-char v4, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mShortcut:C

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    sget-object v5, Lcom/android/settings/quicklaunch/ShortcutPreference;->sStaticVarsLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_1

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    sput-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    sget-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    sget v6, Lcom/android/settings/quicklaunch/ShortcutPreference;->sDimAlpha:I

    invoke-virtual {v4, v6}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    sput-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sDimTitleColor:Landroid/content/res/ColorStateList;

    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v4, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mHasBookmark:Z

    if-eqz v4, :cond_5

    sget-object v0, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    sget-object v5, Lcom/android/settings/quicklaunch/ShortcutPreference;->sStaticVarsLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    sget-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    if-nez v4, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v4

    sput-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    sget-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    sget v6, Lcom/android/settings/quicklaunch/ShortcutPreference;->sDimAlpha:I

    invoke-virtual {v4, v6}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    sput-object v4, Lcom/android/settings/quicklaunch/ShortcutPreference;->sDimSummaryColor:Landroid/content/res/ColorStateList;

    :cond_3
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-boolean v4, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mHasBookmark:Z

    if-eqz v4, :cond_6

    sget-object v0, Lcom/android/settings/quicklaunch/ShortcutPreference;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_4
    return-void

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_5
    sget-object v0, Lcom/android/settings/quicklaunch/ShortcutPreference;->sDimTitleColor:Landroid/content/res/ColorStateList;

    goto :goto_0

    :catchall_1
    move-exception v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :cond_6
    sget-object v0, Lcom/android/settings/quicklaunch/ShortcutPreference;->sDimSummaryColor:Landroid/content/res/ColorStateList;

    goto :goto_1
.end method

.method public setHasBookmark(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mHasBookmark:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/settings/quicklaunch/ShortcutPreference;->mHasBookmark:Z

    invoke-virtual {p0}, Landroid/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method
