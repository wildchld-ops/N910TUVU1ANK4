.class public final enum Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;
.super Ljava/lang/Enum;
.source "FolderIconHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocFolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

.field public static final enum LEFT_FOLDER_INMENU:Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

.field public static final enum NOMAL:Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

.field public static final enum RIGHT_FOLDER_INMENU:Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

    const-string v1, "NOMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;->NOMAL:Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

    new-instance v0, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

    const-string v1, "LEFT_FOLDER_INMENU"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;->LEFT_FOLDER_INMENU:Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

    new-instance v0, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

    const-string v1, "RIGHT_FOLDER_INMENU"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;->RIGHT_FOLDER_INMENU:Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

    sget-object v1, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;->NOMAL:Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;->LEFT_FOLDER_INMENU:Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;->RIGHT_FOLDER_INMENU:Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;->$VALUES:[Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;
    .locals 1

    const-class v0, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;
    .locals 1

    sget-object v0, Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;->$VALUES:[Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/recent/multiwindowUtils/FolderIconHelper$LocFolder;

    return-object v0
.end method
