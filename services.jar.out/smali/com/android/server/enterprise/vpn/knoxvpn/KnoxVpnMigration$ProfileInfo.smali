.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;
.super Ljava/lang/Object;
.source "KnoxVpnMigration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProfileInfo"
.end annotation


# instance fields
.field public adminId:I

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;Ljava/lang/String;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->name:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->adminId:I

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->name:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnMigration$ProfileInfo;->adminId:I

    return-void
.end method
