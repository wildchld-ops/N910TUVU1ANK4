.class public Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;
.super Ljava/lang/Object;
.source "PrivateImeOptionsControllerImpl.java"

# interfaces
.implements Lcom/diotek/ime/framework/common/PrivateImeOptionsController;


# static fields
.field private static mInstance:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;


# instance fields
.field private mCurrentInputType:I

.field private mDisableVoiceInput:Z

.field private mImeOptions:Ljava/lang/CharSequence;

.field private mInputManager:Lcom/diotek/ime/framework/common/InputManager;

.field private mPrivateImeOptionsTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUseCandidatePrevNext:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mInstance:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    iput-object v1, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mImeOptions:Ljava/lang/CharSequence;

    iput-boolean v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mDisableVoiceInput:Z

    iput v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mCurrentInputType:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mPrivateImeOptionsTable:Ljava/util/Hashtable;

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-static {}, Lcom/diotek/ime/framework/repository/PropertyItems;->isUsingCandidateButtonPrevNext()Z

    move-result v0

    iput-boolean v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mUseCandidatePrevNext:Z

    return-void
.end method

.method public static getInstance()Lcom/diotek/ime/framework/common/PrivateImeOptionsController;
    .locals 1

    sget-object v0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mInstance:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;

    invoke-direct {v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mInstance:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mInstance:Lcom/diotek/ime/framework/common/PrivateImeOptionsController;

    return-object v0
.end method

.method private isDisabled(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mPrivateImeOptionsTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .locals 2

    iget-object v1, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mPrivateImeOptionsTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public getDefaultInputmethod()I
    .locals 6

    sget-boolean v4, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v4, :cond_0

    const-string v4, "SamsungIME"

    const-string v5, "PrivateImeOptionsControllerImpl getDefaultInputmethod()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mPrivateImeOptionsTable:Ljava/util/Hashtable;

    const-string v5, "defaultInputmethod"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v4, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mPrivateImeOptionsTable:Ljava/util/Hashtable;

    const-string v5, "inputType"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    const-string v4, "mmsRecipient"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v1, v0

    :goto_0
    return v1

    :cond_2
    if-eqz v3, :cond_3

    const-string v4, "mmsRecipient"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const-string v4, "phonepad"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const-string v4, "qwerty"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    const-string v4, "handwritingbox1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v0, 0x4

    goto :goto_1

    :cond_7
    const-string v4, "handwritingbox2"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v0, 0x5

    goto :goto_1

    :cond_8
    const-string v4, "handwritingfull"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v0, 0x6

    goto :goto_1

    :cond_9
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getDefaultInputrange()I
    .locals 5

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v3, :cond_0

    const-string v3, "SamsungIME"

    const-string v4, "PrivateImeOptionsControllerImpl getDefaultInputrange()"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mPrivateImeOptionsTable:Ljava/util/Hashtable;

    const-string v4, "defaultInputmode"

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    move v1, v0

    :goto_0
    return v1

    :cond_1
    const-string v3, "korean"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    const-string v3, "english"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const-string v3, "symbol"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    const-string v3, "numeric"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x4

    goto :goto_1

    :cond_5
    const-string v3, "emoticon"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/16 v0, 0xe

    goto :goto_1

    :cond_6
    const-string v3, "czech"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v0, 0x5

    goto :goto_1

    :cond_7
    const-string v3, "german"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v0, 0x6

    goto :goto_1

    :cond_8
    const-string v3, "spanish"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v0, 0x7

    goto :goto_1

    :cond_9
    const-string v3, "french"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v0, 0x8

    goto :goto_1

    :cond_a
    const-string v3, "italian"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v0, 0x9

    goto :goto_1

    :cond_b
    const-string v3, "dutch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v0, 0xa

    goto :goto_1

    :cond_c
    const-string v3, "polish"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const/16 v0, 0xb

    goto :goto_1

    :cond_d
    const-string v3, "portuguese"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/16 v0, 0xc

    goto :goto_1

    :cond_e
    const-string v3, "turkish"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const/16 v0, 0xd

    goto/16 :goto_1

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public getDefaultLanguage()I
    .locals 9

    const/4 v5, 0x0

    const/4 v1, -0x1

    iget-object v6, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mPrivateImeOptionsTable:Ljava/util/Hashtable;

    const-string v7, "defaultLanguage"

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-boolean v6, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "SamsungIME"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PrivateImeOptionsControllerImpl getDefaultLanguage() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v4, :cond_2

    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, "_"

    invoke-direct {v3, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    :goto_1
    if-eqz v0, :cond_1

    invoke-static {v0, v2}, Lcom/diotek/ime/framework/common/LanguageID;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    :cond_1
    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PrivateImeOptionsControllerImpl language : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", locale : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", languageID : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    move-object v0, v5

    goto :goto_0

    :cond_4
    move-object v2, v5

    goto :goto_1
.end method

.method public getInputType()I
    .locals 1

    iget v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mCurrentInputType:I

    return v0
.end method

.method public getPrevNextTypeOfPrivateImeOptions()I
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mUseCandidatePrevNext:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mImeOptions:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mImeOptions:Ljava/lang/CharSequence;

    const-string v2, "com.sec.android.inputmethod.axt9.BrowserPrevNext"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0xe

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mImeOptions:Ljava/lang/CharSequence;

    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusPrev"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0xf

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mImeOptions:Ljava/lang/CharSequence;

    const-string v2, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x10

    goto :goto_0
.end method

.method public initPrivateImeOptionsTable()V
    .locals 1

    iget-object v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mPrivateImeOptionsTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mPrivateImeOptionsTable:Ljava/util/Hashtable;

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mCurrentInputType:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mPrivateImeOptionsTable:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    goto :goto_0
.end method

.method public isDisableAutoCorrection()Z
    .locals 1

    const-string v0, "disableAutoReplacement"

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isDisabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDisableEmoticonInput()Z
    .locals 1

    const-string v0, "disableEmoticonInput"

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isDisabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDisableHWRInput()Z
    .locals 1

    const-string v0, "disableHWRInput"

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isDisabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDisableVoice()Z
    .locals 1

    const-string v0, "disableVoiceInput"

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isDisabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mDisableVoiceInput:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableNextTypeOfPrivateImeOptions()Z
    .locals 2

    iget-boolean v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mUseCandidatePrevNext:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mImeOptions:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mImeOptions:Ljava/lang/CharSequence;

    const-string v1, "com.sec.android.inputmethod.axt9.BrowserPrevNext"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mImeOptions:Ljava/lang/CharSequence;

    const-string v1, "com.sec.android.inputmethod.axt9.MoveFocusNext"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabledLatinPreferred()Z
    .locals 1

    const-string v0, "LatinPreferred"

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEnglishEnabled()Z
    .locals 1

    const-string v0, "english"

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isKoreanEnabled()Z
    .locals 1

    const-string v0, "korean"

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isNumericEnabled()Z
    .locals 1

    const-string v0, "numeric"

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPredictionOff()Z
    .locals 1

    const-string v0, "disablePrediction"

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isDisabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSymbolEnabled()Z
    .locals 1

    const-string v0, "symbol"

    invoke-direct {p0, v0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPrivateImeOptionsToTable(Ljava/lang/String;)Z
    .locals 11

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    sget-boolean v8, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v8, :cond_0

    const-string v8, "SamsungIME"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PrivateImeOptionsControllerImpl setPrivateImeOptionsToTable("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mPrivateImeOptionsTable:Ljava/util/Hashtable;

    invoke-virtual {v8}, Ljava/util/Hashtable;->clear()V

    iput-object p1, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mImeOptions:Ljava/lang/CharSequence;

    iput-boolean v6, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mDisableVoiceInput:Z

    if-nez p1, :cond_2

    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v5, :cond_1

    const-string v5, "SamsungIME"

    const-string v7, "setPrivateImeOptionsToTable null"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v5, v6

    :goto_0
    return v5

    :cond_2
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v8, ";"

    invoke-direct {v1, p1, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    new-instance v2, Ljava/util/StringTokenizer;

    const-string v8, "="

    invoke-direct {v2, v3, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    :goto_3
    if-eqz v0, :cond_3

    if-eqz v4, :cond_3

    iget-object v8, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mPrivateImeOptionsTable:Ljava/util/Hashtable;

    invoke-virtual {v8, v0, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    move-object v0, v5

    goto :goto_2

    :cond_5
    move-object v4, v5

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_8

    const-string v5, "nm"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "noMicrophoneKey"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    iput-boolean v7, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mDisableVoiceInput:Z

    :cond_8
    iget-object v5, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mPrivateImeOptionsTable:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->INFO:Z

    if-eqz v5, :cond_9

    const-string v5, "SamsungIME"

    const-string v7, "setPrivateImeOptionsToTable empty"

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    move v5, v6

    goto :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->updateInputType()V

    sget-boolean v5, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v5, :cond_b

    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "defaultInputmode: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getDefaultInputrange()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "defaultInputmethod: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getDefaultInputmethod()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "inputType: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->getInputType()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "korean: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isKoreanEnabled()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "english: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isEnglishEnabled()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "symbol: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isSymbolEnabled()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "\n"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "numeric: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isNumericEnabled()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move v5, v7

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableAutoCorrection = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isDisableAutoCorrection()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableEmoticonInput= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isDisableEmoticonInput()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableHWRInput = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isDisableHWRInput()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableVoice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isDisableVoice()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabledNextType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->isEnableNextTypeOfPrivateImeOptions()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateInputType()V
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mPrivateImeOptionsTable:Ljava/util/Hashtable;

    const-string v5, "inputType"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    iput v2, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mCurrentInputType:I

    :goto_0
    return-void

    :cond_0
    iget-object v4, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mInputManager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v4}, Lcom/diotek/ime/framework/common/InputManager;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_1

    iget v4, v1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    and-int/lit8 v0, v4, 0xf

    :cond_1
    const-string v4, "ipAddress"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_2
    :goto_1
    iput v2, p0, Lcom/diotek/ime/framework/common/PrivateImeOptionsControllerImpl;->mCurrentInputType:I

    goto :goto_0

    :cond_3
    const-string v4, "filename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v2, 0x3

    goto :goto_1

    :cond_4
    const-string v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x4

    goto :goto_1

    :cond_5
    const-string v4, "dictionary"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/16 v2, 0x8

    goto :goto_1

    :cond_6
    const-string v4, "option"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v2, 0x2

    goto :goto_1

    :cond_7
    const-string v4, "mmsContent"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v2, 0x5

    goto :goto_1

    :cond_8
    const-string v4, "mmsRecipient"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v2, 0x6

    goto :goto_1

    :cond_9
    const-string v4, "mmsFilename"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v2, 0x7

    goto :goto_1

    :cond_a
    const-string v4, "month_edittext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v2, 0xa

    goto :goto_1

    :cond_b
    const-string v4, "split_edittext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/16 v2, 0x11

    goto :goto_1

    :cond_c
    const-string v4, "floating_edittext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const/16 v2, 0x12

    goto :goto_1

    :cond_d
    const-string v4, "qwerty_edittext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    const/16 v2, 0x13

    goto :goto_1

    :cond_e
    const-string v4, "YearDateTime_edittext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/16 v2, 0x9

    goto :goto_1

    :cond_f
    const-string v4, "NumberPicker_edittext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x2

    if-ne v0, v4, :cond_10

    const/16 v2, 0xe

    goto/16 :goto_1

    :cond_10
    const-string v4, "noKoreanSuggestion"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/16 v2, 0xb

    goto/16 :goto_1

    :cond_11
    const-string v4, "contactSearch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/16 v2, 0xc

    goto/16 :goto_1

    :cond_12
    const-string v4, "EngToggle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const/16 v2, 0xd

    goto/16 :goto_1

    :cond_13
    const-string v4, "noTracePopup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/16 v2, 0x14

    goto/16 :goto_1

    :cond_14
    const-string v4, "PredictionOff"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/16 v2, 0x15

    goto/16 :goto_1

    :cond_15
    const-string v4, "DisableOCR"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/16 v2, 0x16

    goto/16 :goto_1

    :cond_16
    const-string v4, "DisableClipboard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    const/16 v2, 0x17

    goto/16 :goto_1

    :cond_17
    const-string v4, "PredictionOffLandScape"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    const/16 v2, 0x18

    goto/16 :goto_1

    :cond_18
    const-string v4, "QuickCommand_edittext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/16 v2, 0x19

    goto/16 :goto_1

    :cond_19
    const-string v4, "csc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/16 v2, 0x1a

    goto/16 :goto_1

    :cond_1a
    const-string v4, "DisableEmoji"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v2, 0x1b

    goto/16 :goto_1
.end method
