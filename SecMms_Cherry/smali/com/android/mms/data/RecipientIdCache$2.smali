.class Lcom/android/mms/data/RecipientIdCache$2;
.super Ljava/lang/Thread;
.source "RecipientIdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/data/RecipientIdCache;->updateCanonicalAddressInDb(JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/data/RecipientIdCache;

.field final synthetic val$buf:Ljava/lang/StringBuilder;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$uri:Landroid/net/Uri;

.field final synthetic val$values:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Lcom/android/mms/data/RecipientIdCache;Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/mms/data/RecipientIdCache$2;->this$0:Lcom/android/mms/data/RecipientIdCache;

    iput-object p3, p0, Lcom/android/mms/data/RecipientIdCache$2;->val$cr:Landroid/content/ContentResolver;

    iput-object p4, p0, Lcom/android/mms/data/RecipientIdCache$2;->val$uri:Landroid/net/Uri;

    iput-object p5, p0, Lcom/android/mms/data/RecipientIdCache$2;->val$values:Landroid/content/ContentValues;

    iput-object p6, p0, Lcom/android/mms/data/RecipientIdCache$2;->val$buf:Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/mms/data/RecipientIdCache$2;->val$cr:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/mms/data/RecipientIdCache$2;->val$uri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/mms/data/RecipientIdCache$2;->val$values:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/android/mms/data/RecipientIdCache$2;->val$buf:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method
