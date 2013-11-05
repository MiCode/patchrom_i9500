.class public Lcom/xiaomi/mipush/sdk/PushMessageHandler;
.super Landroid/app/IntentService;


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "mipush message handler"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected static a()V
    .locals 2

    sget-object v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Landroid/content/Context;Lcom/xiaomi/b/a/a;Lorg/apache/thrift/TBase;Z)V
    .locals 9

    const-wide/16 v2, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "receive a message before application calling initialize"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processing a message, action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler$1;->a:[I

    invoke-virtual {p2}, Lcom/xiaomi/b/a/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p3, Lcom/xiaomi/b/a/k;

    iget-wide v0, p3, Lcom/xiaomi/b/a/k;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    iget-object v1, p3, Lcom/xiaomi/b/a/k;->h:Ljava/lang/String;

    iget-object v2, p3, Lcom/xiaomi/b/a/k;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/mipush/sdk/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-wide v0, p3, Lcom/xiaomi/b/a/k;->f:J

    iget-object v2, p3, Lcom/xiaomi/b/a/k;->g:Ljava/lang/String;

    iget-object v3, p3, Lcom/xiaomi/b/a/k;->h:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    check-cast p3, Lcom/xiaomi/b/a/r;

    iget-wide v0, p3, Lcom/xiaomi/b/a/r;->f:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->f()V

    :cond_3
    invoke-static {}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a()V

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "receive a message in pause state. drop it"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    check-cast p3, Lcom/xiaomi/b/a/n;

    invoke-virtual {p3}, Lcom/xiaomi/b/a/n;->l()Lcom/xiaomi/b/a/b;

    move-result-object v6

    if-nez v6, :cond_5

    const-string v0, "receive an empty message without push content, drop it"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Lcom/xiaomi/b/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drop a duplicate message, msgid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Lcom/xiaomi/b/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Lcom/xiaomi/b/a/e;

    invoke-direct {v0}, Lcom/xiaomi/b/a/e;-><init>()V

    invoke-virtual {p3}, Lcom/xiaomi/b/a/n;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/e;->b(Ljava/lang/String;)Lcom/xiaomi/b/a/e;

    invoke-virtual {p3}, Lcom/xiaomi/b/a/n;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/e;->a(Ljava/lang/String;)Lcom/xiaomi/b/a/e;

    invoke-virtual {v6}, Lcom/xiaomi/b/a/b;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaomi/b/a/e;->a(J)Lcom/xiaomi/b/a/e;

    invoke-virtual {p3}, Lcom/xiaomi/b/a/n;->h()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p3}, Lcom/xiaomi/b/a/n;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/e;->c(Ljava/lang/String;)Lcom/xiaomi/b/a/e;

    :cond_6
    invoke-virtual {p3}, Lcom/xiaomi/b/a/n;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p3}, Lcom/xiaomi/b/a/n;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaomi/b/a/e;->d(Ljava/lang/String;)Lcom/xiaomi/b/a/e;

    :cond_7
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/c;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/c;

    move-result-object v1

    sget-object v2, Lcom/xiaomi/b/a/a;->f:Lcom/xiaomi/b/a/a;

    invoke-virtual {v1, v0, v2}, Lcom/xiaomi/mipush/sdk/c;->a(Lorg/apache/thrift/TBase;Lcom/xiaomi/b/a/a;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {p3}, Lcom/xiaomi/b/a/n;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/xiaomi/b/a/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/xiaomi/b/a/n;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/xiaomi/b/a/n;->h()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_3
    check-cast p3, Lcom/xiaomi/b/a/p;

    invoke-virtual {p3}, Lcom/xiaomi/b/a/p;->k()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p3, Lcom/xiaomi/b/a/p;->f:J

    iget-object v4, p3, Lcom/xiaomi/b/a/p;->g:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/xiaomi/b/a/p;->h()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    check-cast p3, Lcom/xiaomi/b/a/t;

    invoke-virtual {p3}, Lcom/xiaomi/b/a/t;->k()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p3, Lcom/xiaomi/b/a/t;->f:J

    iget-object v4, p3, Lcom/xiaomi/b/a/t;->g:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/xiaomi/b/a/t;->h()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->b(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    check-cast p3, Lcom/xiaomi/b/a/g;

    invoke-virtual {p3}, Lcom/xiaomi/b/a/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/xiaomi/b/a/g;->k()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p3}, Lcom/xiaomi/b/a/g;->m()Ljava/lang/String;

    move-result-object v1

    iget-wide v3, p3, Lcom/xiaomi/b/a/g;->g:J

    iget-object v5, p3, Lcom/xiaomi/b/a/g;->h:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    const-string v0, "accept-time"

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v6, :cond_0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_0

    const-string v0, "00:00"

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "00:00"

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/xiaomi/mipush/sdk/a;->a(Z)V

    goto/16 :goto_0

    :cond_9
    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/xiaomi/mipush/sdk/a;->a(Z)V

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "registration id expired"

    check-cast p3, Lcom/xiaomi/b/a/i;

    iget-object v1, p3, Lcom/xiaomi/b/a/i;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/xiaomi/mipush/sdk/MiPushClient;->reInitialize(Landroid/content/Context;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected static a(Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;)V
    .locals 2

    sget-object v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaomi/mipush/sdk/a;->h()Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->b:Ljava/util/Queue;

    if-nez v1, :cond_0

    const-string v1, "pref_msg_ids"

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->b:Ljava/util/Queue;

    array-length v4, v3

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v5, v3, v1

    iget-object v6, p0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->b:Ljava/util/Queue;

    invoke-interface {v6, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->b:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->b:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v3, 0xa

    if-le v1, v3, :cond_2

    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->b:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->b:Ljava/util/Queue;

    const-string v3, ","

    invoke-static {v1, v3}, Lcom/xiaomi/channel/commonutils/c/c;->a(Ljava/util/Collection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "pref_msg_ids"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->onInitializeResult(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->onSubscribeResult(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v6, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->onCommandResult(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    sget-object v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->onReceiveMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public b(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v1, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/xiaomi/mipush/sdk/MiPushClient$MiPushClientCallback;->onUnsubscribeResult(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive an intent from server, action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.mipush.RECEIVE_MESSAGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "mipush_payload"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "mipush_notified"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v0, :cond_1

    const-string v0, "receiving an empty message, drop"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/xiaomi/b/a/h;

    invoke-direct {v2}, Lcom/xiaomi/b/a/h;-><init>()V

    :try_start_0
    invoke-static {v2, v0}, Lcom/xiaomi/b/a/u;->a(Lorg/apache/thrift/TBase;[B)V

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/a;->a(Landroid/content/Context;)Lcom/xiaomi/mipush/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->g()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/xiaomi/b/a/h;->a:Lcom/xiaomi/b/a/a;

    sget-object v4, Lcom/xiaomi/b/a/a;->a:Lcom/xiaomi/b/a/a;

    if-eq v3, v4, :cond_2

    const-string v0, "receive message without registration. need unregister or re-register!"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/thrift/TException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->g()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->k()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, v2, Lcom/xiaomi/b/a/h;->a:Lcom/xiaomi/b/a/a;

    sget-object v2, Lcom/xiaomi/b/a/a;->b:Lcom/xiaomi/b/a/a;

    if-ne v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/xiaomi/mipush/sdk/a;->f()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/mipush/sdk/MiPushClient;->unregisterPush(Landroid/content/Context;)V
    :try_end_1
    .catch Lorg/apache/thrift/TException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_4
    :try_start_2
    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/xiaomi/mipush/sdk/b;->a(Landroid/content/Context;Lcom/xiaomi/b/a/h;)Lorg/apache/thrift/TBase;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receiving an un-recognized message. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/xiaomi/b/a/h;->a:Lcom/xiaomi/b/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/apache/thrift/TException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_3
    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->a(Ljava/lang/Throwable;)V

    const-string v0, "receive a message which action string is not valid. is the reg expired?"

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/apache/thrift/TException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_5
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "receive a message."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaomi/channel/commonutils/logger/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2}, Lcom/xiaomi/b/a/h;->a()Lcom/xiaomi/b/a/a;

    move-result-object v2

    invoke-direct {p0, v3, v2, v0, v1}, Lcom/xiaomi/mipush/sdk/PushMessageHandler;->a(Landroid/content/Context;Lcom/xiaomi/b/a/a;Lorg/apache/thrift/TBase;Z)V
    :try_end_4
    .catch Lorg/apache/thrift/TException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    :cond_6
    const-string v1, "com.xiaomi.mipush.ERROR"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "receive a error message. code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mipush_error_code"

    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mipush_error_msg"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/channel/commonutils/logger/b;->c(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
