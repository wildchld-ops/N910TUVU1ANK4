.class final enum Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;
.super Ljava/lang/Enum;
.source "PersonalPageConfirmLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

.field public static final enum LockedOut:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

.field public static final enum NeedToUnlock:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

.field public static final enum NeedToUnlockWrong:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    const-string v1, "NeedToUnlock"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    new-instance v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    const-string v1, "NeedToUnlockWrong"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    new-instance v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    const-string v1, "LockedOut"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;->$VALUES:[Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;
    .locals 1

    const-class v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;
    .locals 1

    sget-object v0, Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;->$VALUES:[Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/personalpage/PersonalPageConfirmLockPattern$Stage;

    return-object v0
.end method
