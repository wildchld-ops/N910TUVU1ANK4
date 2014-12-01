.class public Lcom/android/settings/LocalePicker;
.super Lcom/android/internal/app/LocalePicker;
.source "LocalePicker.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;
.implements Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;
.implements Lcom/android/settings/DialogCreatable;


# instance fields
.field private hoverListner:Landroid/view/View$OnHoverListener;

.field private mCurrentSystemTtsLocale:Ljava/util/Locale;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mPrevHoverText:Ljava/lang/String;

.field private mSearchStartMenu:Z

.field private mTargetLocale:Ljava/util/Locale;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private mTtsEngine:Landroid/speech/tts/TtsEngines;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/internal/app/LocalePicker;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/LocalePicker;->mSearchStartMenu:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mCurrentSystemTtsLocale:Ljava/util/Locale;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mPrevHoverText:Ljava/lang/String;

    new-instance v0, Lcom/android/settings/LocalePicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/LocalePicker$1;-><init>(Lcom/android/settings/LocalePicker;)V

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->hoverListner:Landroid/view/View$OnHoverListener;

    invoke-virtual {p0, p0}, Lcom/android/internal/app/LocalePicker;->setLocaleSelectionListener(Lcom/android/internal/app/LocalePicker$LocaleSelectionListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LocalePicker;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mPrevHoverText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/LocalePicker;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/LocalePicker;->mPrevHoverText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/LocalePicker;)Landroid/speech/tts/TextToSpeech;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mTts:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/LocalePicker;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mCurrentSystemTtsLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/LocalePicker;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    return-object v0
.end method


# virtual methods
.method public exchangeLocaleOrder()V
    .locals 13

    invoke-virtual {p0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v5, v2, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    new-array v10, v2, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    aput-object v11, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v10}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, 0x4

    new-array v9, v11, [Lcom/android/internal/app/LocalePicker$LocaleInfo;

    const/4 v11, 0x4

    new-array v8, v11, [I

    const/4 v7, 0x0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_2

    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "zh_CN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    aget-object v11, v10, v3

    aput-object v11, v9, v7

    aput v3, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_2
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v2, :cond_3

    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "en_US"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    aget-object v11, v10, v3

    aput-object v11, v9, v7

    aput v3, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_3
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_4

    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "en_GB"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    aget-object v11, v10, v3

    aput-object v11, v9, v7

    aput v3, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_4
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_5

    aget-object v11, v10, v3

    invoke-virtual {v11}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "ko_KR"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    aget-object v11, v10, v3

    aput-object v11, v9, v7

    aput v3, v8, v7

    add-int/lit8 v7, v7, 0x1

    :cond_5
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v9, v11, v5, v12, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v7

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_f

    const/4 v11, 0x4

    if-ne v7, v11, :cond_b

    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_6

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v11, v3, :cond_6

    const/4 v11, 0x2

    aget v11, v8, v11

    if-eq v11, v3, :cond_6

    const/4 v11, 0x3

    aget v11, v8, v11

    if-ne v11, v3, :cond_c

    :cond_6
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_b
    const/4 v11, 0x3

    if-ne v7, v11, :cond_d

    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_6

    const/4 v11, 0x1

    aget v11, v8, v11

    if-eq v11, v3, :cond_6

    const/4 v11, 0x2

    aget v11, v8, v11

    if-eq v11, v3, :cond_6

    :cond_c
    aget-object v11, v10, v3

    aput-object v11, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_d
    const/4 v11, 0x2

    if-ne v7, v11, :cond_e

    const/4 v11, 0x0

    aget v11, v8, v11

    if-eq v11, v3, :cond_6

    const/4 v11, 0x1

    aget v11, v8, v11

    if-ne v11, v3, :cond_c

    goto :goto_7

    :cond_e
    const/4 v11, 0x1

    if-ne v7, v11, :cond_c

    const/4 v11, 0x0

    aget v11, v8, v11

    if-ne v11, v3, :cond_c

    goto :goto_7

    :cond_f
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v11, 0x10900fc

    const v12, 0x10201cd

    invoke-direct {v1, v6, v11, v12, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0
.end method

.method public findIndex(Landroid/widget/ListView;II)I
    .locals 5

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    :goto_0
    if-ltz v3, :cond_1

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {v2, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method protected isInDeveloperMode()Z
    .locals 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "development"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "show"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v4, "eng"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string v3, "locale"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/util/Locale;

    const-string v4, "locale"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    :cond_0
    new-instance v3, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, p0, Lcom/android/settings/LocalePicker;->mTts:Landroid/speech/tts/TextToSpeech;

    new-instance v3, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/LocalePicker;->mTtsEngine:Landroid/speech/tts/TtsEngines;

    iget-object v3, p0, Lcom/android/settings/LocalePicker;->mTtsEngine:Landroid/speech/tts/TtsEngines;

    iget-object v4, p0, Lcom/android/settings/LocalePicker;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-ne v3, v6, :cond_3

    new-instance v3, Ljava/util/Locale;

    aget-object v4, v2, v5

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/LocalePicker;->mCurrentSystemTtsLocale:Ljava/util/Locale;

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "extra_from_search"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/LocalePicker;->mSearchStartMenu:Z

    :cond_2
    return-void

    :cond_3
    array-length v3, v2

    if-ne v3, v7, :cond_4

    new-instance v3, Ljava/util/Locale;

    aget-object v4, v2, v5

    aget-object v5, v2, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/LocalePicker;->mCurrentSystemTtsLocale:Ljava/util/Locale;

    goto :goto_0

    :cond_4
    array-length v3, v2

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    new-instance v3, Ljava/util/Locale;

    aget-object v4, v2, v5

    aget-object v5, v2, v6

    aget-object v6, v2, v7

    invoke-direct {v3, v4, v5, v6}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/LocalePicker;->mCurrentSystemTtsLocale:Ljava/util/Locale;

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090d19

    new-instance v2, Lcom/android/settings/LocalePicker$2;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/LocalePicker$2;-><init>(Lcom/android/settings/LocalePicker;I)V

    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->buildGlobalChangeWarningDialog(Landroid/content/Context;ILjava/lang/Runnable;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    const v2, 0x102000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-static {p2, v1, v0, v2}, Lcom/android/settings/Utils;->forcePrepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/LocalePicker;->hoverListner:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_0
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onInit(I)V
    .locals 0

    return-void
.end method

.method public onLocaleSelected(Ljava/util/Locale;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePicker;->showDialog(I)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/LocalePicker;->mSearchStartMenu:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/LocalePicker;->mSearchStartMenu:Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    invoke-static {p1}, Lcom/android/settings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->hasMultipleUsers(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/LocalePicker;->removeDialog(I)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/app/LocalePicker;->onResume()V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/LocalePicker;->exchangeLocaleOrder()V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    const-string v0, "locale"

    iget-object v1, p0, Lcom/android/settings/LocalePicker;->mTargetLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected removeDialog(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getDialogId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    return-void
.end method

.method protected showDialog(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    const-string v0, "LocalePicker"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/LocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    iget-object v0, p0, Lcom/android/settings/LocalePicker;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
