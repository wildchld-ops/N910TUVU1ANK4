.class public final enum Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;
.super Ljava/lang/Enum;
.source "FileOperationPaste.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/FileOperationPaste;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EncryptionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

.field public static final enum Flat:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

.field public static final enum FlatAndPrivate:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

.field public static final enum NeedToDecrypt:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

.field public static final enum NeedToEncrypt:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    const-string v1, "Flat"

    invoke-direct {v0, v1, v2}, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->Flat:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    new-instance v0, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    const-string v1, "FlatAndPrivate"

    invoke-direct {v0, v1, v3}, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->FlatAndPrivate:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    new-instance v0, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    const-string v1, "NeedToDecrypt"

    invoke-direct {v0, v1, v4}, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->NeedToDecrypt:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    new-instance v0, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    const-string v1, "NeedToEncrypt"

    invoke-direct {v0, v1, v5}, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->NeedToEncrypt:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    sget-object v1, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->Flat:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->FlatAndPrivate:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->NeedToDecrypt:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->NeedToEncrypt:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->$VALUES:[Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;
    .locals 1

    const-class v0, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    return-object v0
.end method

.method public static values()[Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;
    .locals 1

    sget-object v0, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->$VALUES:[Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    return-object v0
.end method
