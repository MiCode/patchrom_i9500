.class Lcom/baidu/mapapi/Mj$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/mapapi/Mj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field final synthetic e:Lcom/baidu/mapapi/Mj;


# direct methods
.method constructor <init>(Lcom/baidu/mapapi/Mj;)V
    .locals 1

    iput-object p1, p0, Lcom/baidu/mapapi/Mj$a;->e:Lcom/baidu/mapapi/Mj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/mapapi/Mj$a;->a:I

    return-void
.end method
