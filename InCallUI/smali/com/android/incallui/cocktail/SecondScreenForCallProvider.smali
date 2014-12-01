.class public Lcom/android/incallui/cocktail/SecondScreenForCallProvider;
.super Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;
.source "SecondScreenForCallProvider.java"


# static fields
.field private static ACCEPT:I

.field private static DRAG:I


# instance fields
.field private PAYPHONE_NUMBER:Ljava/lang/String;

.field private PRIVATE_NUMBER:Ljava/lang/String;

.field private UNKNOWN_NUMBER:Ljava/lang/String;

.field private UNKNOWN_PHONE_NUMBER:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->ACCEPT:I

    const/4 v0, 0x2

    sput v0, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->DRAG:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;-><init>()V

    const-string v0, "-1"

    iput-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->UNKNOWN_NUMBER:Ljava/lang/String;

    const-string v0, "-2"

    iput-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->PRIVATE_NUMBER:Ljava/lang/String;

    const-string v0, "-3"

    iput-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->PAYPHONE_NUMBER:Ljava/lang/String;

    const-string v0, "-4"

    iput-object v0, p0, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->UNKNOWN_PHONE_NUMBER:Ljava/lang/String;

    return-void
.end method

.method private DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v9, "SecondScreenForCallProvider"

    const-string v10, "DisplayWaitingCallDialogWhenDoNotHaveHoldingCall"

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v7

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090168

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    if-nez v6, :cond_1

    const-string v6, ""

    :cond_1
    const-string v0, "%s"

    const/4 v9, 0x2

    new-array v3, v9, [Ljava/lang/String;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090123

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "%s"

    invoke-virtual {v9, v10, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v12

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090122

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "%s"

    invoke-virtual {v9, v10, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v3, v13

    const v9, 0x7f090121

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aget-object v9, v3, v12

    aget-object v10, v3, v13

    invoke-static {v4, v9, v10}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v10

    invoke-static {v9, v10}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1
.end method

.method private DisplayWaitingCallDialogWhenHaveHoldingCall()V
    .locals 15

    const/4 v9, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v8

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-eqz v8, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v12, "SecondScreenForCallProvider"

    const-string v13, "DisplayWaitingCallDialogWhenHaveHoldingCall"

    invoke-static {v12, v13}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v11, 0x7f09016c

    const v7, 0x7f09016a

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual {v8}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090168

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v12

    invoke-static {v4, v12}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const/4 v12, 0x3

    new-array v5, v12, [Ljava/lang/String;

    const-string v0, "%s"

    if-nez v9, :cond_2

    const-string v9, ""

    :cond_2
    if-nez v1, :cond_3

    const-string v1, ""

    :cond_3
    const v12, 0x7f090122

    if-ne v7, v12, :cond_6

    const/4 v12, 0x0

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "%s"

    invoke-virtual {v13, v14, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x1

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "%s"

    invoke-virtual {v13, v14, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    :goto_2
    const/4 v12, 0x2

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09016b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    aget-object v12, v5, v12

    const/4 v13, 0x1

    aget-object v13, v5, v13

    const/4 v14, 0x2

    aget-object v14, v5, v14

    invoke-static {v6, v12, v13, v14}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->showWaitingCallDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->isConferenceCall()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v8}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v12

    invoke-static {v4, v12}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getChildCallIds()Lcom/google/common/collect/ImmutableSortedSet;

    move-result-object v12

    invoke-virtual {v12}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v10

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090169

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v8}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v12

    invoke-static {v4, v12}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v12

    invoke-static {v4, v12}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->getName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const v11, 0x7f090121

    const v7, 0x7f090122

    goto/16 :goto_1

    :cond_6
    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    const/4 v12, 0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v5, v12

    goto/16 :goto_2
.end method

.method private controlWaitingCall(I)V
    .locals 7

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "SecondScreenForCallProvider"

    const-string v6, "controlWaitingCall"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    if-eqz v5, :cond_0

    move v1, v3

    :goto_0
    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/services/telephony/common/Call;

    move-result-object v5

    if-eqz v5, :cond_1

    move v2, v3

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->DisplayWaitingCallDialogWhenHaveHoldingCall()V

    :goto_2
    return-void

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    goto :goto_2
.end method

.method private updateCocktailInCall(Landroid/content/Context;I)V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget v1, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->DRAG:I

    if-ne p2, v1, :cond_1

    const-string v1, "isDragMode"

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getDragModeViewVisible()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    const-string v1, "SecondScreenForCallProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDragMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "isDragMode"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v2

    if-nez v2, :cond_2

    :goto_1
    return-void

    :cond_1
    sget v1, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->ACCEPT:I

    if-ne p2, v1, :cond_0

    const-string v1, "isAccept"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->getCocktailCategory(I)I

    move-result v2

    new-instance v3, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    invoke-direct {v3, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v3, v2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setCategory(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v0

    const/16 v2, 0x9f

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->setDisplayPolicy(I)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo$Builder;->build()Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;

    move-result-object v2

    invoke-static {p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;

    move-result-object v3

    new-instance v0, Landroid/content/ComponentName;

    const-class v4, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->getCocktailIds(Landroid/content/ComponentName;)[I

    move-result-object v4

    const/4 v0, 0x0

    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_3

    aget v5, v4, v0

    invoke-virtual {v3, v5, v2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;->updateCocktail(ILcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager$CocktailInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->doUpdate(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_1
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDisabled(Landroid/content/Context;)V

    return-void
.end method

.method public onDroped(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Landroid/view/DragEvent;)V
    .locals 18

    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v10, 0x0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super/range {p0 .. p3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onDroped(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;Landroid/view/DragEvent;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    const-string v15, "remove_content_share_on_call"

    invoke-static {v15}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    invoke-virtual/range {p3 .. p3}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v5

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v15, 0x0

    invoke-virtual {v5, v15}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4}, Landroid/content/ClipData;->getItemCount()I

    move-result v6

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SecondScreenForCallProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "clipData = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "SecondScreenForCallProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "clipDescription = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/services/telephony/common/Call;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v10

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-ge v7, v6, :cond_7

    invoke-virtual {v4, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v15

    if-eqz v15, :cond_6

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "android.intent.extra.STREAM"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    if-eqz v15, :cond_6

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v15

    const-string v16, "android.intent.extra.STREAM"

    invoke-virtual/range {v15 .. v16}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_5

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v15

    if-lez v15, :cond_4

    const-string v15, "\n"

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    const-string v15, "SecondScreenForCallProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mSelectedString = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "SecondScreenForCallProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mSelectedUri = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v13, :cond_9

    const-string v15, "text/uri-list"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_e

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "/images/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "/com.sec.android.app.FlashBarService/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_8

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "/com.android.systemui/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    :cond_8
    const-string v13, "image/*"

    :cond_9
    :goto_4
    const/4 v15, 0x1

    if-ne v6, v15, :cond_10

    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.SEND"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v15, 0x14000000

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v15, "address"

    invoke-virtual {v8, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android.intent.extra.TEXT"

    invoke-virtual {v8, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_b

    const-string v16, "android.intent.extra.STREAM"

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/Parcelable;

    move-object/from16 v0, v16

    invoke-virtual {v8, v0, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_b
    const-string v15, "com.android.mms"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "call_dropObject"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v15, "exit_on_sent"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_c
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "/video/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_d

    const-string v13, "video/*"

    goto :goto_4

    :cond_d
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/Uri;

    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, "/audio/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    const-string v13, "audio/*"

    goto/16 :goto_4

    :cond_e
    const-string v15, "text"

    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_f

    const-string v13, "text/plain"

    goto/16 :goto_4

    :cond_f
    const-string v15, "image"

    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "video"

    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    const-string v15, "audio"

    invoke-virtual {v13, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    goto/16 :goto_1

    :cond_10
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v15, "address"

    invoke-virtual {v8, v15, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v15, 0x14000000

    invoke-virtual {v8, v15}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v15, "android.intent.extra.STREAM"

    invoke-virtual {v8, v15, v12}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v15, "com.android.mms"

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v15, "call_dropObject"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v15, "exit_on_sent"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onEnabled(Landroid/content/Context;)V

    const-string v0, "SecondScreenForCallProvider"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23

    const-string v20, "SecondScreenForCallProvider"

    const-string v21, "onReceive"

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v20, "com.samsung.android.cocktail.action.CALL_ACTION"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    const-string v20, "action"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v20, "SecondScreenForCallProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Action:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v20, "accept"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getState()I

    move-result v20

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    const/4 v13, 0x1

    :goto_0
    if-eqz v13, :cond_2

    const/16 v20, 0x800

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Lcom/android/services/telephony/common/Call;->can(I)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->controlWaitingCall(I)V

    :cond_0
    :goto_1
    invoke-super/range {p0 .. p2}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    goto :goto_1

    :cond_3
    const-string v20, "reject"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->rejectCall(Landroid/content/Context;)V

    const-string v20, "support_second_screen"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static {}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->doClose()V

    goto :goto_1

    :cond_4
    const-string v20, "speaker"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/InCallPresenter;->toggleSpeakerphone()V

    goto :goto_1

    :cond_5
    const-string v20, "mute"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    const-string v20, "EXTRA_CALL_MUTE"

    const/16 v21, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v9

    if-nez v9, :cond_6

    const/16 v18, 0x1

    :goto_2
    if-nez v14, :cond_7

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->muteClicked(Z)V

    goto :goto_1

    :cond_6
    const/16 v18, 0x0

    goto :goto_2

    :cond_7
    const/16 v20, 0x2

    move/from16 v0, v20

    if-ne v14, v0, :cond_8

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v9, v0, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/incallui/InCallPresenter;->muteClicked(Z)V

    goto/16 :goto_1

    :cond_8
    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v14, v0, :cond_0

    if-nez v9, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/incallui/InCallPresenter;->muteClicked(Z)V

    goto/16 :goto_1

    :cond_9
    const-string v20, "end"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_a
    const-string v20, "drag"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    new-instance v10, Landroid/content/Intent;

    invoke-direct {v10}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const-string v21, "com.sec.feature.multiwindow.recentui"

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_b

    const-string v20, "com.android.systemui"

    const-string v21, "com.android.systemui.recent.multiwindow.SmartClipDragDrop"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v20, "support_second_screen"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Lcom/android/incallui/InCallPresenter;->setDragModeViewVisible(Z)V

    sget v20, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->DRAG:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->updateCocktailInCall(Landroid/content/Context;I)V

    goto/16 :goto_1

    :cond_b
    const-string v20, "com.sec.android.app.FlashBarService"

    const-string v21, "com.sec.android.app.FlashBarService.SmartClipDragDrop"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_3

    :cond_c
    const-string v20, "full"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(Z)Landroid/content/Intent;

    move-result-object v19

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v20

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_d

    const-string v20, "persona"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/PersonaManager;

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/PersonaManager;->switchPersonaAndLaunch(ILandroid/content/Intent;)Z

    goto/16 :goto_1

    :cond_d
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/InCallPresenter;->checkDrivelink()V

    if-eqz v19, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string v20, "support_second_screen"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->blockToUpdate(Z)V

    invoke-static {}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->doClose()V

    goto/16 :goto_1

    :cond_e
    const-string v20, "close_cocktail"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_f

    invoke-static {}, Lcom/android/incallui/cocktail/SecondScreenPanelUtils;->doClose()V

    goto/16 :goto_1

    :cond_f
    const-string v20, "log"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_17

    const/16 v16, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/services/telephony/common/Call;

    move-result-object v11

    if-eqz v11, :cond_10

    invoke-virtual {v11}, Lcom/android/services/telephony/common/Call;->getNumber()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_10

    invoke-virtual {v11}, Lcom/android/services/telephony/common/Call;->getNumberPresentation()I

    move-result v15

    sget v20, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_UNKNOWN:I

    move/from16 v0, v20

    if-ne v15, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->UNKNOWN_NUMBER:Ljava/lang/String;

    move-object/from16 v16, v0

    :cond_10
    :goto_4
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_16

    const-string v20, "SecondScreenForCallProvider"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "launch CallDetailActivity about number: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x1

    invoke-static/range {v20 .. v22}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    new-instance v6, Landroid/content/Intent;

    const-string v20, "android.intent.action.VIEW"

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v20

    const-string v21, "CscFeature_Contact_ReplacePackageAs"

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-eqz v20, :cond_11

    const-string v8, "com.android.contacts"

    :cond_11
    const-string v20, "com.android.dialer.CallDetailActivity"

    move-object/from16 v0, v20

    invoke-virtual {v6, v8, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v20, "phone_number"

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v20, "vnd.android.cursor.item/calls"

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v20, 0x10008000

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    :cond_12
    sget v20, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_RESTRICTED:I

    move/from16 v0, v20

    if-ne v15, v0, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->PRIVATE_NUMBER:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_4

    :cond_13
    sget v20, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_PAYPHONE:I

    move/from16 v0, v20

    if-ne v15, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->PAYPHONE_NUMBER:Ljava/lang/String;

    move-object/from16 v16, v0

    goto :goto_4

    :cond_14
    const-string v20, "feature_lgt"

    invoke-static/range {v20 .. v20}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->UNKNOWN_PHONE_NUMBER:Ljava/lang/String;

    move-object/from16 v16, v0

    goto/16 :goto_4

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/cocktail/SecondScreenForCallProvider;->UNKNOWN_NUMBER:Ljava/lang/String;

    move-object/from16 v16, v0

    goto/16 :goto_4

    :cond_16
    const-string v20, "SecondScreenForCallProvider"

    const-string v21, "can not launch CallDetailActivity because number is empty"

    invoke-static/range {v20 .. v21}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_17
    const-string v20, "playguidance"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_18

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance(Landroid/content/Context;)V

    goto/16 :goto_1

    :cond_18
    const-string v20, "setautoanswer_true"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_19

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Landroid/content/Context;Z)V

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Landroid/content/Context;Z)V

    goto/16 :goto_1

    :cond_19
    const-string v20, "setautoanswermode_false"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1a

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Landroid/content/Context;Z)V

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Landroid/content/Context;Z)V

    goto/16 :goto_1

    :cond_1a
    const-string v20, "setautoanswer_false"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1b

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Landroid/content/Context;Z)V

    goto/16 :goto_1

    :cond_1b
    const-string v20, "accept_am"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/InCallPresenter;->updateSecondScreen()V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v20

    const/16 v21, 0x2

    invoke-virtual/range {v20 .. v21}, Lcom/android/incallui/CallList;->getFirstCallWithState(I)Lcom/android/services/telephony/common/Call;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v20

    invoke-virtual {v12}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Lcom/android/incallui/CallCommandClient;->answerMessage(IZ)V

    goto/16 :goto_1

    :cond_1c
    const-string v20, "reject_am"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1e

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_1d

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->hangUpOngoingCall(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->stopAnswerMemo()V

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Landroid/content/Context;Z)V

    :cond_1d
    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnsweringMode(Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Landroid/content/Context;Z)V

    goto/16 :goto_1

    :cond_1e
    const-string v20, "startAnsweringmessage"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_20

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/services/telephony/common/Call;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_1f

    invoke-virtual {v4}, Lcom/android/services/telephony/common/Call;->getCallId()I

    move-result v5

    :cond_1f
    if-eqz v4, :cond_0

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnswered(Landroid/content/Context;Z)V

    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->setAutoAnsweringMode(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/incallui/CallCommandClient;->getInstance()Lcom/android/incallui/CallCommandClient;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/incallui/CallCommandClient;->answerCall(I)V

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->playGuidance(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static {}, Lcom/android/incallui/CallCardPresenter;->getInstance()Lcom/android/incallui/CallCardPresenter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/CallCardPresenter;->showGuidancePlayingView()V

    goto/16 :goto_1

    :cond_20
    const-string v20, "am_memory_full"

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/incallui/InCallPresenter;->memoryFullAnswerMemoNotification()V

    goto/16 :goto_1
.end method

.method public onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailProvider;->onUpdate(Landroid/content/Context;Lcom/samsung/android/sdk/look/cocktailbar/SlookCocktailManager;[I)V

    return-void
.end method
