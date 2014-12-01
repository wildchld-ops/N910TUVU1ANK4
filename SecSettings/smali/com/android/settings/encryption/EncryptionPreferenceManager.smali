.class public Lcom/android/settings/encryption/EncryptionPreferenceManager;
.super Ljava/lang/Object;
.source "EncryptionPreferenceManager.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    iput-object p1, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    return-void
.end method


# virtual methods
.method public isSDcardEncryptionPossible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v0

    return v0
.end method
