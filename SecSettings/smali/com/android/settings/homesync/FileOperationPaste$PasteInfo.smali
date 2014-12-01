.class public Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;
.super Ljava/lang/Object;
.source "FileOperationPaste.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homesync/FileOperationPaste;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PasteInfo"
.end annotation


# instance fields
.field destPath:Ljava/lang/String;

.field sourcePath:Ljava/lang/String;

.field type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->sourcePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->destPath:Ljava/lang/String;

    sget-object v0, Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;->Flat:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    iput-object v0, p0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->sourcePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->destPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/homesync/FileOperationPaste$PasteInfo;->type:Lcom/android/settings/homesync/FileOperationPaste$EncryptionType;

    return-void
.end method
