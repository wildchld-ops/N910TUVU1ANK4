.class public Lcom/diotek/ime/framework/input/hw/HwKeyManager;
.super Ljava/lang/Object;
.source "HwKeyManager.java"


# static fields
.field public static final INVALID_VALUE:I = -0xff

.field private static sInstance:Lcom/diotek/ime/framework/input/hw/HwKeyManager;


# instance fields
.field private altGrLt:Z

.field private mCurrentKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsEmptyKey:Z

.field private mKeyMapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhonepadCurrentKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPhonepadDefaultKeyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPhonepadKeyMapSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->sInstance:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mDefaultKeyMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mCurrentKeyMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadDefaultKeyMap:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadCurrentKeyMap:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mIsEmptyKey:Z

    iput-boolean v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->altGrLt:Z

    iput-object v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/diotek/ime/framework/input/hw/HwKeyManager;
    .locals 2

    const-class v1, Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->sInstance:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;-><init>()V

    sput-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->sInstance:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    sget-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->sInstance:Lcom/diotek/ime/framework/input/hw/HwKeyManager;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->initialize()V

    :cond_0
    sget-object v0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->sInstance:Lcom/diotek/ime/framework/input/hw/HwKeyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private final initialize()V
    .locals 7

    const/16 v6, 0xa

    const/high16 v5, 0x40a00000

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v6, v5}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    new-instance v0, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;

    invoke-direct {v0}, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;-><init>()V

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->getHwKeyMapSet()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    if-nez v3, :cond_0

    const-string v3, "SamsungIME"

    const-string v4, "HwKeyManager::initialize() / Could not get the mKeyMapSet."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    const-string v4, "en_GB"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-nez v1, :cond_2

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "SamsungIME"

    const-string v4, "Default H/W key map is en_US"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    const-string v4, "en_US"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    :cond_2
    iput-object v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mDefaultKeyMap:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mCurrentKeyMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3, v6, v5}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/hw/HwKeyMapFactory;->getHwPhonepadKeyMapSet()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    if-nez v3, :cond_3

    const-string v3, "SamsungIME"

    const-string v4, "HwKeyManager::initialize() / Could not get the mPhonepadKeyMapSet."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    const-string v4, "en_GB"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    if-nez v2, :cond_5

    sget-boolean v3, Lcom/diotek/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "SamsungIME"

    const-string v4, "Default H/W key map is en_US"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    const-string v4, "en_US"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    :cond_5
    iput-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadDefaultKeyMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadCurrentKeyMap:Ljava/util/HashMap;

    goto :goto_0
.end method

.method private isLithuanianAltGr(I)Z
    .locals 3

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v1

    iget-boolean v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->altGrLt:Z

    if-eqz v2, :cond_2

    const/high16 v2, 0x6c740000

    if-ne v1, v2, :cond_2

    const/4 v2, 0x7

    if-lt p1, v2, :cond_0

    const/16 v2, 0x10

    if-le p1, v2, :cond_1

    :cond_0
    const/16 v2, 0x46

    if-ne p1, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public convertCyrillicUmlaut(II)I
    .locals 2

    move v0, p1

    const/high16 v1, 0x6b6b0000

    if-ne p2, v1, :cond_1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x69

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x6f

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x71

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x73

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x77

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x61

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x70

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x75

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x79

    goto :goto_0

    :cond_1
    const/high16 v1, 0x756b0000

    if-ne p2, v1, :cond_0

    const/16 v1, 0x443

    if-ne p1, v1, :cond_0

    const/16 v0, 0x75

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x433 -> :sswitch_7
        0x437 -> :sswitch_6
        0x439 -> :sswitch_2
        0x43d -> :sswitch_8
        0x445 -> :sswitch_5
        0x446 -> :sswitch_4
        0x448 -> :sswitch_0
        0x449 -> :sswitch_1
        0x44a -> :sswitch_3
    .end sparse-switch
.end method

.method public getCharacter(IZZ)S
    .locals 7

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/16 v0, -0xff

    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v3

    invoke-interface {v2}, Lcom/diotek/ime/framework/common/InputManager;->getShiftStateController()Lcom/diotek/ime/framework/common/ShiftStateController;

    move-result-object v5

    iput-object v5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    iget-object v5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mCurrentKeyMap:Ljava/util/HashMap;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mCurrentKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    :cond_0
    if-nez v1, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mDefaultKeyMap:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mDefaultKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;

    :cond_1
    if-eqz v1, :cond_c

    invoke-direct {p0, p1}, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->isLithuanianAltGr(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getAltgredChar()I

    move-result v0

    if-eqz p2, :cond_2

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getShiftedAltgredChar()I

    move-result v0

    :cond_2
    :goto_0
    const/16 v5, -0xff

    if-ne v0, v5, :cond_3

    const/4 v4, 0x1

    :cond_3
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mIsEmptyKey:Z

    :goto_1
    int-to-short v4, v0

    return v4

    :cond_4
    const v5, 0x66724652

    if-eq v3, v5, :cond_5

    const/high16 v5, 0x66720000

    if-ne v3, v5, :cond_6

    :cond_5
    iget-object v5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getShiftedChar()I

    move-result v0

    goto :goto_0

    :cond_6
    const/high16 v5, 0x74720000

    if-eq v3, v5, :cond_7

    const/16 v5, 0x5452

    if-ne v3, v5, :cond_8

    :cond_7
    iget-object v5, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mShiftStateController:Lcom/diotek/ime/framework/common/ShiftStateController;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/ShiftStateController;->getCapsLockState()Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez p2, :cond_2

    if-nez p3, :cond_2

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getShiftedChar()I

    move-result v0

    goto :goto_0

    :cond_8
    if-nez p2, :cond_9

    if-nez p3, :cond_9

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getNormalChar()I

    move-result v0

    goto :goto_0

    :cond_9
    if-eqz p2, :cond_a

    if-nez p3, :cond_a

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getShiftedChar()I

    move-result v0

    goto :goto_0

    :cond_a
    if-nez p2, :cond_b

    if-eqz p3, :cond_b

    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getAltgredChar()I

    move-result v0

    goto :goto_0

    :cond_b
    invoke-virtual {v1}, Lcom/diotek/ime/framework/input/hw/HwKeyInfo;->getShiftedAltgredChar()I

    move-result v0

    goto :goto_0

    :cond_c
    iput-boolean v4, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mIsEmptyKey:Z

    goto :goto_1
.end method

.method public getNordicSymbolPopupKey(I)I
    .locals 1

    move v0, p1

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/16 v0, 0x40

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x7b

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x5b

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x5d

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x7d

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x28 -> :sswitch_2
        0x29 -> :sswitch_3
        0x2f -> :sswitch_1
        0x30 -> :sswitch_4
        0x32 -> :sswitch_0
        0x37 -> :sswitch_1
        0x38 -> :sswitch_2
        0x39 -> :sswitch_3
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method public getPhonepadCharacters(I)[I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadCurrentKeyMap:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadCurrentKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    :cond_0
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadDefaultKeyMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadDefaultKeyMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;

    :cond_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/diotek/ime/framework/input/hw/HwPhonepadKeyInfo;->getKeyCodes()[I

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v3, v1

    if-lez v3, :cond_3

    aget v3, v1, v2

    const/16 v4, -0xff

    if-ne v3, v4, :cond_2

    const/4 v2, 0x1

    :cond_2
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mIsEmptyKey:Z

    :cond_3
    :goto_0
    return-object v1

    :cond_4
    iput-boolean v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mIsEmptyKey:Z

    goto :goto_0
.end method

.method public isEmptyKey()Z
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mIsEmptyKey:Z

    return v0
.end method

.method public setInputLanguage(Lcom/diotek/ime/framework/common/Language;)V
    .locals 6

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/diotek/ime/framework/util/Utils;->getHWKeyboardCountryCode(Lcom/diotek/ime/framework/common/Language;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v3, :cond_5

    :cond_0
    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "lt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "lv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ro"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "vi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v1, "en_US"

    :cond_2
    iget-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mCurrentKeyMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mCurrentKeyMap:Ljava/util/HashMap;

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mCurrentKeyMap:Ljava/util/HashMap;

    :cond_3
    iget-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadCurrentKeyMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadCurrentKeyMap:Ljava/util/HashMap;

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadKeyMapSet:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->mPhonepadCurrentKeyMap:Ljava/util/HashMap;

    :cond_4
    return-void

    :cond_5
    const-string v2, "%s_%s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/diotek/ime/framework/common/Language;->getLanguageCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public toggleAltGrLt()V
    .locals 1

    iget-boolean v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->altGrLt:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/diotek/ime/framework/input/hw/HwKeyManager;->altGrLt:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
