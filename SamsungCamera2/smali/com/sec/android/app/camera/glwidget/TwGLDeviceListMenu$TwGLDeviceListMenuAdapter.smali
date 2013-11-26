.class Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;
.super Ljava/lang/Object;
.source "TwGLDeviceListMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLList$Adapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwGLDeviceListMenuAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)V
    .locals 0

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShareShot:Lcom/sec/android/app/camera/ShareShot;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/app/camera/ShareShot;

    move-result-object v0

    iget-object v0, v0, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->getUserCount()I

    move-result v0

    return v0
.end method

.method public getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;
    .locals 6
    .parameter "position"
    .parameter "convertView"

    .prologue
    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, itemData:Lcom/samsung/shareshot/User;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mShareShot:Lcom/sec/android/app/camera/ShareShot;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/app/camera/ShareShot;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/app/camera/ShareShot;->mUserWrapper:Lcom/sec/android/app/camera/ShareShot$UserWrapper;

    invoke-virtual {v1, p1}, Lcom/sec/android/app/camera/ShareShot$UserWrapper;->getUserFromList(I)Lcom/samsung/shareshot/User;

    move-result-object v2

    .line 153
    if-nez v2, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 163
    :goto_0
    return-object v0

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mPosition:I
    invoke-static {v1, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->access$202(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;I)I

    .line 156
    if-nez p2, :cond_1

    .line 157
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    #getter for: Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/app/camera/Camera;

    move-result-object v1

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->access$400()I

    move-result v3

    int-to-float v4, v3

    invoke-static {}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->access$500()I

    move-result v3

    int-to-float v5, v3

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;-><init>(Lcom/sec/android/app/camera/Camera;Lcom/samsung/shareshot/User;IFF)V

    .line 158
    .local v0, item:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mList:Lcom/sec/android/glview/TwGLList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Lcom/sec/android/glview/TwGLList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setOnKeyListener(Lcom/sec/android/glview/TwGLView$OnKeyListener;)V

    .line 160
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mItemList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #item:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListItem;
    :cond_1
    move-object v0, p2

    .line 163
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu$TwGLDeviceListMenuAdapter;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->mItemList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLDeviceListMenu;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    return-void
.end method
