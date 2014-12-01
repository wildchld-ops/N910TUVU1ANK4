.class public Lcom/android/settings/personalvibration/PersonalVibration;
.super Landroid/app/Activity;
.source "PersonalVibration.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;
    }
.end annotation


# instance fields
.field backView:Lcom/android/settings/personalvibration/BackgroundView;

.field buttonLayout:Landroid/widget/LinearLayout;

.field centerButton:Landroid/widget/Button;

.field centerText:Landroid/widget/TextView;

.field leftButton:Landroid/widget/Button;

.field mDialog:Landroid/app/AlertDialog;

.field private mEditPattern:Landroid/widget/TextView;

.field private mFromContact:Ljava/lang/Boolean;

.field mHandler:Landroid/os/Handler;

.field mOkBtn:Landroid/widget/Button;

.field patternLong:[J

.field rightButton:Landroid/widget/Button;

.field stopButton:Landroid/widget/Button;

.field stopButtonLayout:Landroid/widget/LinearLayout;

.field vib:Landroid/os/SystemVibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->patternLong:[J

    return-void
.end method

.method public static StringToLongArray(Ljava/lang/String;)[J
    .locals 7

    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "PersonalVibration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StringToLongArray, size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    array-length v3, v2

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    const-string v3, "PersonalVibration"

    const-string v4, "string is null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    array-length v3, v2

    new-array v1, v3, [J

    const/4 v0, 0x0

    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v0

    const-string v3, "PersonalVibration"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ret["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v5, v1, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/settings/personalvibration/PersonalVibration;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/personalvibration/PersonalVibration;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "afterTextChanged(), stage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v1, v2, :cond_1

    :cond_0
    if-gtz v0, :cond_2

    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ok btn is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v1, v2, :cond_1

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/settings/personalvibration/PersonalVibration$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/personalvibration/PersonalVibration$1;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getPatternString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v1}, Landroid/os/SystemVibrator;->cancel()V

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v1, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_9

    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "leftButton is clicked, backView state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v3}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Pause:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v1, v2, :cond_8

    const/4 v8, 0x0

    const/16 v12, 0x1a

    const-string v1, "PersonalVibration"

    const-string v2, "Save button was clicked"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToLast()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    :cond_5
    const-string v1, "vibration_name"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lastSavedName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f091228

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const-string v1, " "

    invoke-virtual {v13, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    const/4 v1, 0x0

    aget-object v13, v14, v1

    if-eqz v11, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [0-9]+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    array-length v1, v15

    const/4 v2, 0x1

    if-le v1, v2, :cond_6

    const/4 v1, 0x1

    aget-object v1, v15, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v1, v9, 0x5

    add-int/lit8 v8, v1, 0x1

    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currentIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "db count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v1, "input_method"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/inputmethod/InputMethodManager;

    const v1, 0x7f04017c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    const v1, 0x7f0b0395

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    const v2, 0x7f091228

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/lit8 v5, v8, -0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    check-cast v1, Landroid/widget/EditText;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v12}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f091224

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/personalvibration/PersonalVibration$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10}, Lcom/android/settings/personalvibration/PersonalVibration$4;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/personalvibration/PersonalVibration$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/settings/personalvibration/PersonalVibration$3;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090cd7

    new-instance v3, Lcom/android/settings/personalvibration/PersonalVibration$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v10}, Lcom/android/settings/personalvibration/PersonalVibration$2;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->mOkBtn:Landroid/widget/Button;

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v1, v2, :cond_0

    const v1, 0x7f091223

    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    move-object/from16 v0, p1

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/personalvibration/PersonalVibration;->stopRecording()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v1}, Landroid/os/SystemVibrator;->cancel()V

    goto/16 :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "PersonalVibration"

    const-string v1, "onConfigurationChanged()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->stopRecording()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    const-string v0, "PersonalVibration"

    const-string v1, "save dialog is displayed so calling addTextChangedListener()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "PersonalVibration"

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f040193

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const v1, 0x7f0b0032

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    const v1, 0x7f0b03ec

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/personalvibration/BackgroundView;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0b0294

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b03ed

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0b0028

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    const v1, 0x7f0b03f0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    const v1, 0x7f0b03ef

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    const v1, 0x7f0b03ee

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->leftButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->rightButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v1, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/personalvibration/PersonalVibration$BackgroundViewHandler;-><init>(Lcom/android/settings/personalvibration/PersonalVibration;Lcom/android/settings/personalvibration/PersonalVibration$1;)V

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    iget-object v2, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/settings/personalvibration/BackgroundView;->setHandler(Landroid/os/Handler;)V

    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.pattern.FROM_CONTACT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    const-string v1, "PersonalVibration"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFromContact : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Play:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setPauseTimer()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->stopRecording()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v0}, Landroid/os/SystemVibrator;->cancel()V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v1}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Recording:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v1, v2, :cond_0

    const-string v1, "PersonalVibration"

    const-string v2, "onResume() : stage is recording so stop recording"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->stopRecording()V

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->vib:Landroid/os/SystemVibrator;

    invoke-virtual {v1}, Landroid/os/SystemVibrator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/personalvibration/PersonalVibration;->mEditPattern:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v1, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1

    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->isTimerRunning()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/BackgroundView;->getStage()Lcom/android/settings/personalvibration/BackgroundView$Stage;

    move-result-object v2

    sget-object v3, Lcom/android/settings/personalvibration/BackgroundView$Stage;->Standby:Lcom/android/settings/personalvibration/BackgroundView$Stage;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/PersonalVibration;->runRecording()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method runRecording()V
    .locals 3

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setRunRecordingTimer()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->patternLong:[J

    return-void
.end method

.method stopRecording()V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->backView:Lcom/android/settings/personalvibration/BackgroundView;

    invoke-virtual {v0}, Lcom/android/settings/personalvibration/BackgroundView;->setStopTimer()V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->centerButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->buttonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/personalvibration/PersonalVibration;->stopButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
