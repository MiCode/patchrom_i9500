.class Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$2;
.super Ljava/lang/Object;
.source "SimeSwiftKeyService.java"

# interfaces
.implements Lcom/touchtype_fluency/LoggingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->initLogger()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$2;->this$0:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V
    .locals 2
    .parameter "level"
    .parameter "message"

    .prologue
    .line 283
    sget-object v0, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService$8;->$SwitchMap$com$touchtype_fluency$LoggingListener$Level:[I

    invoke-virtual {p1}, Lcom/touchtype_fluency/LoggingListener$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 292
    const-string v0, "SimeSwiftKeyService"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :goto_0
    return-void

    .line 285
    :pswitch_0
    const-string v0, "SimeSwiftKeyService"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 288
    :pswitch_1
    const-string v0, "SimeSwiftKeyService"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
