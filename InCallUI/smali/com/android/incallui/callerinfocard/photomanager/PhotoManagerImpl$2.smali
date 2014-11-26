.class Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$2;
.super Landroid/util/LruCache;
.source "PhotoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache",
        "<",
        "Ljava/lang/Object;",
        "Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;I)V
    .locals 0
    .param p2    # I

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$2;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;)V
    .locals 1
    .param p1    # Z
    .param p2    # Ljava/lang/Object;
    .param p3    # Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;
    .param p4    # Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$2;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    # invokes: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->dumpStats()V
    invoke-static {v0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$000(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;)V

    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Z
    .param p2    # Ljava/lang/Object;
    .param p3    # Ljava/lang/Object;
    .param p4    # Ljava/lang/Object;

    check-cast p3, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;

    check-cast p4, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$2;->entryRemoved(ZLjava/lang/Object;Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Object;Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;

    iget-object v0, p2, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;->bytes:[B

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;->bytes:[B

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
    .param p2    # Ljava/lang/Object;

    check-cast p2, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$2;->sizeOf(Ljava/lang/Object;Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$BitmapHolder;)I

    move-result v0

    return v0
.end method
