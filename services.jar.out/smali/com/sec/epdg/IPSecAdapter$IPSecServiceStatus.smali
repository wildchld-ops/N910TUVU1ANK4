.class Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;
.super Ljava/lang/Object;
.source "IPSecAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/IPSecAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IPSecServiceStatus"
.end annotation


# instance fields
.field data:Lcom/ipsec/client/IPsecEventData;

.field error:Lcom/ipsec/client/IPsecError;

.field final synthetic this$0:Lcom/sec/epdg/IPSecAdapter;


# direct methods
.method private constructor <init>(Lcom/sec/epdg/IPSecAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;->this$0:Lcom/sec/epdg/IPSecAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/epdg/IPSecAdapter;Lcom/sec/epdg/IPSecAdapter$1;)V
    .locals 0
    .param p1    # Lcom/sec/epdg/IPSecAdapter;
    .param p2    # Lcom/sec/epdg/IPSecAdapter$1;

    invoke-direct {p0, p1}, Lcom/sec/epdg/IPSecAdapter$IPSecServiceStatus;-><init>(Lcom/sec/epdg/IPSecAdapter;)V

    return-void
.end method
