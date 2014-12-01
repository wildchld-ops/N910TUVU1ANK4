.class Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$1;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$1;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Object;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$1;->this$0:Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;

    # invokes: Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->dumpStats()V
    invoke-static {v0}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;->access$000(Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl;)V

    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p3, Landroid/graphics/Bitmap;

    check-cast p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$1;->entryRemoved(ZLjava/lang/Object;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected sizeOf(Ljava/lang/Object;Landroid/graphics/Bitmap;)I
    .locals 1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0
.end method

.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/callerinfocard/photomanager/PhotoManagerImpl$1;->sizeOf(Ljava/lang/Object;Landroid/graphics/Bitmap;)I

    move-result v0

    return v0
.end method
