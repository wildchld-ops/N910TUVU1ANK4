.class Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;
.super Landroid/content/AsyncQueryHandler;
.source "VOLanguagePackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/visionobjects/resourcemanager/VOLanguagePackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourceManagerQueryAsyncHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;


# direct methods
.method public constructor <init>(Lcom/visionobjects/resourcemanager/VOLanguagePackManager;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/visionobjects/resourcemanager/VOLanguagePackManager$ResourceManagerQueryAsyncHandler;->this$0:Lcom/visionobjects/resourcemanager/VOLanguagePackManager;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    return-void
.end method
