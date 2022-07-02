import React, { Component } from "react";
import { Button, Input, Label, List, Message } from "semantic-ui-react";
import { Actor, Instance } from "../lib/types";

interface Props {
  account: any;
  instance: Instance | null;
}

interface State {
  inProgress: boolean;
  errorMessage: string;
  domain: string;
  message: string;
}

export class Register extends Component<Props, any> {
  state: State = {
    inProgress: false,
    domain: "",
    errorMessage: "",
    message: "",
  };

  register = async () => {
    if (!this.props.instance) {
      alert("Create an actor instance first!");
      return;
    }

    const reqBody = {
      address: this.props.account.address,
      key: this.props.account.private_base64,
      id: this.props.instance.id,
      domain: this.state.domain,
    };

    this.setState({ inProgress: true, errorMessage: "" });
    try {
      const result = await fetch(`api/register`, {
        headers: {
          Accept: "application/json",
          "Content-Type": "application/json",
        },
        method: "POST",
        body: JSON.stringify(reqBody),
      });

      const parsedBody = await result.json();

      if (parsedBody.errorMessage)
        this.setState({ errorMessage: parsedBody.errorMessage });
      else this.setState({ message: "OK" });
    } catch (err: any) {
      this.setState({ errorMessage: err });
    }

    this.setState({ inProgress: false });
  };

  render() {
    return (
      <>
        <List style={{ marginTop: "5px" }}>
          <List.Item>
            <Input
              label={"Domain"}
              input={this.state.domain}
              onChange={(event) =>
                this.setState({ domain: event.target.value })
              }
            ></Input>
          </List.Item>
          <List.Item>
            <Button
              disabled={!(this.props.instance && this.state.domain)}
              loading={this.state.inProgress}
              secondary
              onClick={this.register}
            >
              Run
            </Button>
          </List.Item>
          <List.Item>
            <Label>
              Message:
              <Label.Detail>{this.state.message || "-"}</Label.Detail>
            </Label>
          </List.Item>
        </List>

        <Message hidden={this.state.errorMessage == ""} error>
          <Message.Header>Oops!</Message.Header>
          {this.state.errorMessage}
        </Message>
      </>
    );
  }
}
