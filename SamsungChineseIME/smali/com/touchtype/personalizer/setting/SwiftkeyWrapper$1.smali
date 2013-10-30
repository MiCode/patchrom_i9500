.class final Lcom/touchtype/personalizer/setting/SwiftkeyWrapper$1;
.super Ljava/lang/Object;
.source "SwiftkeyWrapper.java"

# interfaces
.implements Lcom/touchtype_fluency/LoggingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/setting/SwiftkeyWrapper;->getLanguagePackManager()Lcom/touchtype_fluency/util/LanguagePackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Lcom/touchtype_fluency/LoggingListener$Level;Ljava/lang/String;)V
    .locals 2
    .parameter "level"
    .parameter "message"

    .prologue
    .line 26
    sget-object v0, Lcom/touchtype/personalizer/setting/SwiftkeyWrapper$2;->$SwitchMap$com$touchtype_fluency$LoggingListener$Level:[I

    invoke-virtual {p1}, Lcom/touchtype_fluency/LoggingListener$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 35
    :pswitch_0
    return-void

    .line 26
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
