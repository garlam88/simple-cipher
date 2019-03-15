Shift Cipher challenge
======================

## Goal

Your challenge is to complete a shift cipher challenge that can encode and
decode simple phrases.  You will have completed the challenge
when all tests succeed.

## What is a shift cipher?

Shift ciphers are also called Caesar ciphers as they were used by Julius Caesar
to scramble his messages to military personnel, so that they were purposefully
unintelligible to any unintended reader.

Using a shift cipher is a simple and well-known (albeit usually insecure!)
encryption technique, and a suitable topic for the focus of our challenge. In a
simple shift cipher, a given input phrase is shifted by a certain number of
characters so that it is no longer legible.

For example, when using a shift of 1, the letter _a_ would be shifted to _b_.

### Examples

When using a shift of _1_ (default):

```ruby
# Encode:
Cipher.encode('foobar') # ---> 'gppcbs'

# Decode:
# We can simply reverse the shift
Cipher.decode('gppcbs') # ---> 'foobar'
```

When using a shift of _10_:

```ruby
# Encode:
Cipher.encode('foobar', distance: 10) # ---> 'pyylkb'

# Decode:
Cipher.decode('pyylkb', distance: 10) # ---> 'foobar'
```

Our implementation of the shift cipher is a simple one:

- For encoding, the input text should be shifted by _n_ characters, with a
  default shift of 1
- For decoding, encoded text should be shifted back and return the original
  input text.
- When a shift causes a letter to pass the end of the alphabet, it should wrap
  to the beginning.

Example: _z_ shifted by 1 should become _a_.

## Download

Fork this repository to your account and clone it, or download it as a zip and
extract the files.

## Run

1. Open a terminal window and navigate to the challenge directory.
2. Run `gem install minitest`.
3. Run `ruby cipher_test.rb` to test the challenge.

## Complete

- The project contains a test file: _cipher_test.rb_. You will need to create a file
  containing your implementation.
- You are encouraged to make this an iterative TDD process: comment out one
  `skip` statement and run the tests to ensure they pass. Then comment out the
  `skip` statement in the subsequent test and repeat the process.
- Use the test file to guide your implementation.
- The test file should remain unchanged other than commenting out `skip`
  statements during the TDD process.

**The challenge is complete once all _skip_ statements are commented out and
all tests pass:**

```
(0 failures, 0 errors, 0 skips)
```

## Submit

- If you forked the repository, ensure your repo is public, your changes are
  committed and pushed, and send us a link to your repository via email.
- If you downloaded the repository as a zip file, zip your changes and send
  them to us via an email attachment.
- Good luck! We hope you enjoy sharpening your skills on challenges like this
  as much as we do.

## Troubleshooting

- Ensure you have ruby installed (`ruby -v`)
- Ensure you have minitest installed (`gem install minitest`)
- Ensure you are in the challenge directory

## About Us

The Cyndx platform harnesses the power of semantic search which is driven by
our proprietary predictive analytics engine. We make data smarter, so that it
can work harder and more effective for you, which ultimately allow you to find
the right investments or investors to satisfy your needs, every time.

Learn more: https://www.cyndx.com

## Attribution

Simplified and adapted from the Exercism (https://exercism.io/) cipher exercise.
