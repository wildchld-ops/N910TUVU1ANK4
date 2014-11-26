.class Lcom/android/mms/ui/EmoticonContainer$2;
.super Landroid/content/AsyncQueryHandler;
.source "EmoticonContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/EmoticonContainer;->initStickerContainer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/EmoticonContainer;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/EmoticonContainer;Landroid/content/ContentResolver;)V
    .locals 0
    .param p2    # Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/android/mms/ui/EmoticonContainer$2;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .param p1    # I
    .param p2    # Ljava/lang/Object;
    .param p3    # Landroid/database/Cursor;

    iget-object v0, p0, Lcom/android/mms/ui/EmoticonContainer$2;->this$0:Lcom/android/mms/ui/EmoticonContainer;

    # invokes: Lcom/android/mms/ui/EmoticonContainer;->onQueryCompleted(ILjava/lang/Object;Landroid/database/Cursor;)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/mms/ui/EmoticonContainer;->access$300(Lcom/android/mms/ui/EmoticonContainer;ILjava/lang/Object;Landroid/database/Cursor;)V

    return-void
.end method
